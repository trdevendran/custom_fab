# custom_fab
A Customisable FloatingActionButton when need to achieve the entire shape with custom image/icon from the assets directory.

## Features
- Custom image/icon from the assets directory can be used to display `FloatingActionButton`
- Icon can be used to achieve the default `FloatingActionButton`

## Usage
### With Custom image asset
```dart
CustomFab(
  size: 94,
  assetPath: 'assets/images/controls.png',
  shadowColor: Colors.red,
  elevation: 20,
  onTap: () {
  _incrementCounter();
  },
)
```

### With Icon
```dart
CustomFab(
  icon: const Icon(Icons.filter_alt_outlined),
  elevation: 12,
  onTap: () {
    _incrementCounter();
  },
)
```
### Sample UI:
(as per the app module of `/example`)

<p align="center">
  <img src="https://github.com/user-attachments/assets/8dd88c89-9777-472c-9b41-a5baf2cca097" alt="Screenshot_1723977927" width="45%"/>
  <img src="https://github.com/user-attachments/assets/6a9fe974-ee42-4849-a6d6-eb91d0f8dc19" alt="Screenshot_1723977812" width="45%"/>
</p>

## Configuration Parameters
| **Property**  | **Default Value** | **Description**                                                                                                                                        |
|---------------|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| `size`        | `56.0`            | Defines the size of the widget or the custom `FloatingActionButton`.                                                                                   |
| `elevation`   | `6.0`             | The z-coordinate at which to place this button relative to its parent. Controls the size of the shadow below the button. Value is always non-negative. |
| `shadowColor` | `Colors.grey`     | Color that the shadow will be drawn with. Shadows are composited directly over the base canvas and do not represent optical occlusion.                 |
| `assetPath`   | `null`            | Path to the image asset to be used for the widget.                                                                                                     |
| `icon`        | `null`            | An `Icon` widget that can be used within the standard `FloatingActionButton`.                                                                          |
| `onTap`       | `null`            | A callback function that is triggered when the user taps this part of the material.                                                                    |

### Feel free to contribute to this package!! 🙇‍♂️
Always happy if anyone wants to help to improve this package!

### If you need any features
Please open an issue so that we can discuss your feature request 🙏
