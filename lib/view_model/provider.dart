import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/model/todo_model.dart';
import 'package:todo_list/repository/graphql.dart';
import 'package:todo_list/view_model/done_view_model.dart';
import 'package:todo_list/view_model/inprogress_view_model.dart';
import 'package:todo_list/view_model/radio_button_view_model.dart';
import 'package:todo_list/view_model/todo_view_model.dart';

final radioButtonProvider =
    ChangeNotifierProvider((ref) => RadioButtonViewModel());

final todoContentProvider = ChangeNotifierProvider(
    (ref) => TodoContentViewModel(client: ref.read(graphQLApiClientProvider)));

final inProgressContentProvider = ChangeNotifierProvider((ref) =>
    InProgressContentViewModel(client: ref.read(graphQLApiClientProvider)));

final doneContentProvider = ChangeNotifierProvider(
    (ref) => DoneContentViewModel(client: ref.read(graphQLApiClientProvider)));

Map<Status, dynamic> statusToProvider = {
  Status.TODO: todoContentProvider,
  Status.IN_PROGRESS: inProgressContentProvider,
  Status.DONE: doneContentProvider,
};
