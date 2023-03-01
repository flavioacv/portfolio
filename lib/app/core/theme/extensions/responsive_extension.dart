import 'dart:ui';

const double WIDTH_DEFAULT_DESIGN = 375;
const double HEIGHT_DEFAULT_DESIGN = 821.0;

extension ResponsiveExtension on num {
  Size get _deviceSize => Size(
        window.physicalSize.width / window.devicePixelRatio,
        window.physicalSize.height / window.devicePixelRatio,
      );

  double get w {
    return _calculation(
      value: this,
      direction: DeviceDirection.width,
    );
  }

  double get h {
    return _calculation(
      value: this,
      direction: DeviceDirection.height,
    );
  }

  double get p {
    return _calculation(
      value: this,
      direction: DeviceDirection.height,
    );
  }

  double _calculation({
    required num value,
    required DeviceDirection direction,
  }) {
    final orientation = direction == DeviceDirection.width
        ? _deviceSize.width
        : _deviceSize.height;

    final valueDefault = direction == DeviceDirection.width
        ? WIDTH_DEFAULT_DESIGN
        : HEIGHT_DEFAULT_DESIGN;

    final percent = value * 100 / valueDefault;
    return (orientation * percent) / 100;
  }
}

enum DeviceDirection {
  height,
  width,
}
