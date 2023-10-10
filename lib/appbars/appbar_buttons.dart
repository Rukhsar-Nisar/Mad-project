import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconButton? leading;
  final Function? leadingOnPressed;
  final IconButton? trailing;
  final Function? trailingOnPressed;

  CustomAppBar({
    this.leading,
    this.leadingOnPressed,
    this.trailing,
    this.trailingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaffoldBackgroundColor = theme.scaffoldBackgroundColor;
    return AppBar(
      elevation :0,
      backgroundColor: scaffoldBackgroundColor,
      leading: leading,
      actions: <Widget>[
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
