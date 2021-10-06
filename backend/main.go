package main

import (
	"context"
	"fmt"
	"log"
	"time"

	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/shurcooL/graphql"
)

const Region = "ap-northeast-1"
const AppSyncAPIURL = "https://zrxgfst6nfgcze2i4qdjtxzwju.appsync-api.ap-northeast-1.amazonaws.com/graphql"

// ご自分のスキーマに合わせてください
type CreateTodolistInput struct {
	Title     graphql.String `json:"title"`
	Memo      graphql.String `json:"memo,omitempty"`
	CreatedAt graphql.Int    `json:"createdAt,omitempty"`
}

func main() {
	cfg, err := config.LoadDefaultConfig(context.TODO(),
		config.WithRegion("ap-northeast-1"),
	)
	if err != nil {
		log.Fatalf("unable to load SDK config, %v", err)
	}

	credentials, err := cfg.Credentials.Retrieve(context.TODO())
	if err != nil {
		log.Fatalf("failed to retrieve credentials")
	}

	// このあたりのお作法は`github.com/shurcooL/graphql`のドキュメントを参照
	var m struct {
		CreateTodolist struct {
			ID graphql.ID
		} `graphql:"createTodolist(input: $createtodolistinput)"`
	}
	var q struct {
		GetTodolist struct {
			Items []struct {
				Title graphql.String
			}
		} `graphql:"listTodolists(filter: {title: {eq: $t}})"`
	}
	/*
	  query listTodolists {
	    listTodolists(filter: {title: {eq: "title from golang"}}) {
	      items {
	        id
	        createdAt
	        memo
	        title
	      }
	    }
	  }
	*/

	variables := map[string]interface{}{
		"createtodolistinput": CreateTodolistInput{
			Title:     graphql.String("title from golang"),
			Memo:      graphql.String("memo from golang"),
			CreatedAt: graphql.Int(time.Now().Unix()),
		},
	}

	v := map[string]interface{}{
		"t": graphql.String("title from golang"),
	}

	client := NewAppSyncHTTPClient(context.TODO(), credentials, Region)
	appsyncClient := graphql.NewClient(AppSyncAPIURL, client)
	err = appsyncClient.Mutate(context.TODO(), &m, variables)
	err = appsyncClient.Query(context.TODO(), &q, v)
	for _, item := range q.GetTodolist.Items {
		fmt.Println("title: ", item.Title)
	}
	if err != nil {
		log.Fatalf("failed to request to appsync: %v", err)
	}
}
