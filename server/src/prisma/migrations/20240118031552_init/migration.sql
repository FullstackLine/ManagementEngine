/*
  Warnings:

  - You are about to drop the `users` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `users_status` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_user_status_id_fkey";

-- DropTable
DROP TABLE "users";

-- DropTable
DROP TABLE "users_status";

-- CreateTable
CREATE TABLE "system_users" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "public_name" TEXT NOT NULL,
    "user_status_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "deleted_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "system_users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_status" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "system_users_status_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_extern_integration" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "system_users_extern_integration_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_roles" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_permissions" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_roles_permissions" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_roles_permissions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_roles" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_users_roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_users_tracking" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_users_tracking_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_events_tracking" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_events_tracking_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "system_settings" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "system_settings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fpm_persons" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "fpm_persons_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fpm_departments" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "fpm_departments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ffm_files" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "ffm_files_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "fdv_data_visualizers" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "fdv_data_visualizers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ftm_tasks" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "ftm_tasks_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ftm_users_tasks" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "ftm_users_tasks_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "system_users_email_key" ON "system_users"("email");

-- AddForeignKey
ALTER TABLE "system_users" ADD CONSTRAINT "system_users_user_status_id_fkey" FOREIGN KEY ("user_status_id") REFERENCES "system_users_status"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
