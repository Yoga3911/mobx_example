import 'package:mobx/mobx.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_user_mobx.g.dart';

class GetUser extends _GetUser with _$GetUser {}

abstract class _GetUser with Store {
  @observable
  ObservableFuture<List<UserModel>>? _users;

  @computed
  @ObservableUserModelListConverter()
  List<UserModel> get users => _users?.value ?? [];

  @computed
  @ObservableUserModelListConverter()
  set setUsers(List<UserModel> value) => _users = ObservableFuture.value(value);

  @computed
  bool get hasUsers => _users?.value?.isNotEmpty ?? false;

  @observable
  bool _isLoading = false;

  @computed
  bool get isLoading => _isLoading;

  @computed
  set setLoading(bool value) => _isLoading = value;

  @action
  Future getUser() async {
    setLoading = true;
    setUsers = await fetchUsers();

    setLoading = false;
  }

  @action
  void addUsers() {
    setUsers = [
      UserModel(
        'Eko',
        'eko@gmail.com',
      ),
      UserModel(
        'Mamat',
        'mamat@gmail.com',
      ),
    ];
  }
}

class UserModel {
  final String name;
  final String email;

  UserModel(this.name, this.email);

  UserModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

Future<List<UserModel>> fetchUsers() async {
  await Future.delayed(const Duration(seconds: 2));

  return [];
}

class ObservableUserModelListConverter extends JsonConverter<
    ObservableList<UserModel>, Iterable<Map<String, dynamic>>> {
  const ObservableUserModelListConverter();

  @override
  ObservableList<UserModel> fromJson(Iterable<Map<String, dynamic>> json) =>
      ObservableList.of(json.map(UserModel.fromJson));

  @override
  Iterable<Map<String, dynamic>> toJson(ObservableList<UserModel> object) =>
      object.map((element) => element.toJson());
}
