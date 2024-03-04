// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GetUser on _GetUser, Store {
  Computed<List<UserModel>>? _$usersComputed;

  @override
  List<UserModel> get users => (_$usersComputed ??=
          Computed<List<UserModel>>(() => super.users, name: '_GetUser.users'))
      .value;
  Computed<bool>? _$hasUsersComputed;

  @override
  bool get hasUsers => (_$hasUsersComputed ??=
          Computed<bool>(() => super.hasUsers, name: '_GetUser.hasUsers'))
      .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_GetUser.isLoading'))
      .value;

  late final _$_usersAtom = Atom(name: '_GetUser._users', context: context);

  @override
  ObservableFuture<List<UserModel>>? get _users {
    _$_usersAtom.reportRead();
    return super._users;
  }

  @override
  set _users(ObservableFuture<List<UserModel>>? value) {
    _$_usersAtom.reportWrite(value, super._users, () {
      super._users = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: '_GetUser._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$getUserAsyncAction =
      AsyncAction('_GetUser.getUser', context: context);

  @override
  Future<dynamic> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  late final _$_GetUserActionController =
      ActionController(name: '_GetUser', context: context);

  @override
  void addUsers() {
    final _$actionInfo =
        _$_GetUserActionController.startAction(name: '_GetUser.addUsers');
    try {
      return super.addUsers();
    } finally {
      _$_GetUserActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
hasUsers: ${hasUsers},
isLoading: ${isLoading}
    ''';
  }
}
