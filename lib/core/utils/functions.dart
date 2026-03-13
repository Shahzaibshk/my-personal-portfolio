import 'dart:html' as html;

import 'package:aerium/presentation/pages/project_detail/project_detail_page.dart';
import 'package:aerium/presentation/widgets/project_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class Functions {
  static void launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (uri.scheme.isEmpty) {
      // Local asset path — use an anchor element to trigger download
      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', url.split('/').last)
        ..click();
      anchor.remove();
    } else {
      if (await url_launcher.canLaunchUrl(uri)) {
        await url_launcher.launchUrl(
          uri,
          mode: url_launcher.LaunchMode.externalApplication,
        );
      }
    }
  }

  static Size textSize({
    required String text,
    required TextStyle? style,
    int maxLines = 1,
    double maxWidth = double.infinity,
  }) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: maxLines,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: maxWidth);
    return textPainter.size;
  }

  static void navigateToProject({
    required BuildContext context,
    required List<ProjectItemData> dataSource,
    required ProjectItemData currentProject,
    required int currentProjectIndex,
  }) {
    ProjectItemData? nextProject;
    bool hasNextProject;
    if ((currentProjectIndex + 1) > (dataSource.length - 1)) {
      hasNextProject = false;
    } else {
      hasNextProject = true;
      nextProject = dataSource[currentProjectIndex + 1];
    }
    Navigator.of(context).pushNamed(
      ProjectDetailPage.projectDetailPageRoute,
      arguments: ProjectDetailArguments(
        dataSource: dataSource,
        currentIndex: currentProjectIndex,
        data: currentProject,
        nextProject: nextProject,
        hasNextProject: hasNextProject,
      ),
    );
  }
}
