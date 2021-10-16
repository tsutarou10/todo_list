import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';
import 'package:todo_list/repository/graphql_client.dart';
import 'package:todo_list/view_model/radio_button_view_model.dart';
import 'package:todo_list/view_model/tab_page_view_model.dart';

class TabPageViewModelArgs {
  final Status status;
  TabPageViewModelArgs({required this.status});
}

final radioButtonProvider =
    ChangeNotifierProvider((ref) => RadioButtonViewModel());

final todoContentProvider = ChangeNotifierProvider((ref) => TabPageViewModel(
    client: ref.read(graphQLRepositoryProvider),
    args: TabPageViewModelArgs(status: Status.TODO)));

final inProgressContentProvider = ChangeNotifierProvider((ref) =>
    TabPageViewModel(
        client: ref.read(graphQLRepositoryProvider),
        args: TabPageViewModelArgs(status: Status.IN_PROGRESS)));

final doneContentProvider = ChangeNotifierProvider((ref) => TabPageViewModel(
    client: ref.read(graphQLRepositoryProvider),
    args: TabPageViewModelArgs(status: Status.DONE)));

Map<Status, dynamic> statusToProvider = {
  Status.TODO: todoContentProvider,
  Status.IN_PROGRESS: inProgressContentProvider,
  Status.DONE: doneContentProvider,
};

final graphQLClientProvider = Provider((_) => GraphQLClientRepository());

final graphQLRepositoryProvider =
    Provider((ref) => GraphQLRepository(ref.read(graphQLClientProvider)));
