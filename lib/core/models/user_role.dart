import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

enum UserRole {
  parent,
  student,
  teacher,
  admin,
}

extension UserRoleExtension on UserRole {
  String get arabicName {
    switch (this) {
      case UserRole.parent:
        return 'ولي الأمر';
      case UserRole.student:
        return 'الطالب';
      case UserRole.teacher:
        return 'المدرس';
      case UserRole.admin:
        return 'المدير';
    }
  }

  String get description {
    switch (this) {
      case UserRole.parent:
        return 'تابع حضور ابنك واستلم الإشعارات';
      case UserRole.student:
        return 'سجل حضورك وتابع تقييماتك';
      case UserRole.teacher:
        return 'تابع حضور طلابك وشاهد تقييماتك';
      case UserRole.admin:
        return 'أدر المدرسين والطلاب والتقارير';
    }
  }

  IconData get icon {
    switch (this) {
      case UserRole.parent:
        return Icons.family_restroom;
      case UserRole.student:
        return Icons.school;
      case UserRole.teacher:
        return Icons.person_outline;
      case UserRole.admin:
        return Icons.admin_panel_settings;
    }
  }

  Color get color {
    switch (this) {
      case UserRole.parent:
        return AppColors.parentRole;
      case UserRole.student:
        return AppColors.studentRole;
      case UserRole.teacher:
        return AppColors.teacherRole;
      case UserRole.admin:
        return AppColors.adminRole;
    }
  }
}
