package main

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"net/http"
	"time"

	"github.com/aws/aws-sdk-go-v2/aws"
	v4 "github.com/aws/aws-sdk-go-v2/aws/signer/v4"
)

type transport struct {
	ctx         context.Context
	credentials aws.Credentials
	region      string
}

func (t *transport) RoundTrip(req *http.Request) (*http.Response, error) {
	body, err := req.GetBody()
	if err != nil {
		return nil, err
	}

	buf := new(bytes.Buffer)
	buf.ReadFrom(body)
	b := sha256.Sum256(buf.Bytes())
	payloadHash := hex.EncodeToString(b[:])

	signer := v4.NewSigner()
	err = signer.SignHTTP(t.ctx, t.credentials, req, payloadHash, "appsync", t.region, time.Now())
	if err != nil {
		return nil, fmt.Errorf("failed to sign request: %v", err)
	}
	client := &http.Client{}
	return client.Do(req)
}

func NewAppSyncHTTPClient(ctx context.Context, credentials aws.Credentials, region string) *http.Client {
	return &http.Client{
		Transport: &transport{
			ctx:         ctx,
			credentials: credentials,
			region:      region,
		},
	}
}
