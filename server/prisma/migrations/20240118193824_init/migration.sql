/*
  Warnings:

  - You are about to drop the column `description` on the `system_users_extern_integration` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `system_users_extern_integration` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `system_users_status` table. All the data in the column will be lost.
  - You are about to drop the `system_users_tracking` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `deleted_at` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rules_in_json` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `fdv_data_visualizers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `file_mimetype` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `file_name` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `file_path` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `file_size_bytes` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `hash` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `ffm_files` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `fpm_departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `fpm_departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `fpm_departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `fpm_departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `fpm_persons` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `fpm_persons` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `fpm_persons` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deadline_at` to the `ftm_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `ftm_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `ftm_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `ftm_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `ftm_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `ftm_users_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `task_id` to the `ftm_users_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `ftm_users_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `ftm_users_tasks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `event_type_id` to the `system_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `system_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `admin` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `edit` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `feature` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `hard_delete` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `read` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `soft_delete` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tag` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `write` to the `system_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `system_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `system_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_roles_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `permission_id` to the `system_roles_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `role_id` to the `system_roles_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_roles_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_settings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `feature` to the `system_settings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `flag` to the `system_settings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rules_in_json` to the `system_settings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_settings` table without a default value. This is not possible if the table is not empty.
  - Added the required column `full_name` to the `system_users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_users_extern_integration` table without a default value. This is not possible if the table is not empty.
  - Added the required column `extern_code` to the `system_users_extern_integration` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tag_id` to the `system_users_extern_integration` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_users_extern_integration` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `system_users_extern_integration` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_users_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_users_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deleted_at` to the `system_users_status` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `system_users_status` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `system_users_status` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "fdv_data_visualizers" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "rules_in_json" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "ffm_files" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "file_mimetype" TEXT NOT NULL,
ADD COLUMN     "file_name" TEXT NOT NULL,
ADD COLUMN     "file_path" TEXT NOT NULL,
ADD COLUMN     "file_size_bytes" INTEGER NOT NULL,
ADD COLUMN     "hash" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "fpm_departments" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "fpm_persons" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "ftm_tasks" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deadline_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "title" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "ftm_users_tasks" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "task_id" INTEGER NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "system_events_tracking" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "event_type_id" INTEGER NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "system_permissions" ADD COLUMN     "admin" BOOLEAN NOT NULL,
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "edit" BOOLEAN NOT NULL,
ADD COLUMN     "feature" TEXT NOT NULL,
ADD COLUMN     "hard_delete" BOOLEAN NOT NULL,
ADD COLUMN     "read" BOOLEAN NOT NULL,
ADD COLUMN     "soft_delete" BOOLEAN NOT NULL,
ADD COLUMN     "tag" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "write" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "system_roles" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "system_roles_permissions" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "permission_id" INTEGER NOT NULL,
ADD COLUMN     "role_id" INTEGER NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "system_settings" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "feature" TEXT NOT NULL,
ADD COLUMN     "flag" INTEGER NOT NULL,
ADD COLUMN     "rules_in_json" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "system_users" ADD COLUMN     "full_name" TEXT NOT NULL,
ALTER COLUMN "created_at" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "system_users_extern_integration" DROP COLUMN "description",
DROP COLUMN "title",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "extern_code" TEXT NOT NULL,
ADD COLUMN     "tag_id" INTEGER NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "system_users_roles" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "system_users_status" DROP COLUMN "title",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "deleted_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- DropTable
DROP TABLE "system_users_tracking";

-- CreateTable
CREATE TABLE "system_users_extern_integration_tags" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_users_extern_integration_tags_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_permissions" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_users_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_events_tracking" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_users_events_tracking_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_events_types_tracking" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_events_types_tracking_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_features" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_features_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_tags" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "feature_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_tags_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fpm_occupations" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "fpm_occupations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fpm_persons_occupations" (
    "id" SERIAL NOT NULL,
    "person_id" INTEGER NOT NULL,
    "occupation_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "fpm_persons_occupations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fpm_persons_departments" (
    "id" SERIAL NOT NULL,
    "person_id" INTEGER NOT NULL,
    "department_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "fpm_persons_departments_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "system_users_extern_integration" ADD CONSTRAINT "system_users_extern_integration_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_extern_integration" ADD CONSTRAINT "system_users_extern_integration_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "system_users_extern_integration_tags"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_roles_permissions" ADD CONSTRAINT "system_roles_permissions_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "system_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_roles_permissions" ADD CONSTRAINT "system_roles_permissions_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "system_permissions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_events_tracking" ADD CONSTRAINT "system_events_tracking_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_events_tracking" ADD CONSTRAINT "system_events_tracking_event_type_id_fkey" FOREIGN KEY ("event_type_id") REFERENCES "system_events_types_tracking"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_tags" ADD CONSTRAINT "system_tags_feature_id_fkey" FOREIGN KEY ("feature_id") REFERENCES "system_features"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fpm_persons" ADD CONSTRAINT "fpm_persons_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fpm_persons_occupations" ADD CONSTRAINT "fpm_persons_occupations_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "fpm_persons"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fpm_persons_occupations" ADD CONSTRAINT "fpm_persons_occupations_occupation_id_fkey" FOREIGN KEY ("occupation_id") REFERENCES "fpm_occupations"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fpm_persons_departments" ADD CONSTRAINT "fpm_persons_departments_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "fpm_persons"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fpm_persons_departments" ADD CONSTRAINT "fpm_persons_departments_department_id_fkey" FOREIGN KEY ("department_id") REFERENCES "fpm_departments"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ffm_files" ADD CONSTRAINT "ffm_files_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "fdv_data_visualizers" ADD CONSTRAINT "fdv_data_visualizers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ftm_users_tasks" ADD CONSTRAINT "ftm_users_tasks_task_id_fkey" FOREIGN KEY ("task_id") REFERENCES "ftm_tasks"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ftm_users_tasks" ADD CONSTRAINT "ftm_users_tasks_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
