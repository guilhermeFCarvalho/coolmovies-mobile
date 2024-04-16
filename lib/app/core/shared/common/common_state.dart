import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

@freezed
abstract class CommonState<F, S> with _$CommonState<F, S> {
  const factory CommonState.initial() = CommonStateInitial;
  const factory CommonState.loadInProgress() = CommonStateLoadInProgress;
  const factory CommonState.loadSuccess(S data) = CommonStateLoadSuccess;
  const factory CommonState.loadFailure(F failure) = CommonStateLoadFailure;
}