class CastUtils {
  /// Casting one type to another type
  static T cast<T>(dynamic value, {T defaultValue}) =>
      value is T ? value : defaultValue;
}
