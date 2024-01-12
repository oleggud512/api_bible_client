import 'package:bible/src/features/bibles/domain/entities/bible.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bible_widget_bloc_params.freezed.dart';

@freezed
class BibleWidgetBlocParams with _$BibleWidgetBlocParams {
  factory BibleWidgetBlocParams(Bible bible) = _BibleWidgetBlocParams;
}