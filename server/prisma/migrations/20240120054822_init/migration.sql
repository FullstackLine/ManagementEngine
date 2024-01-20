/*
  Warnings:

  - You are about to drop the `system_events_tracking` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `type_id` to the `system_users_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `system_users_events_tracking` table without a default value. This is not possible if the table is not empty.
  - Added the required column `permission_id` to the `system_users_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `system_users_permissions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `role_id` to the `system_users_roles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `system_users_roles` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "system_events_tracking" DROP CONSTRAINT "system_events_tracking_event_type_id_fkey";

-- DropForeignKey
ALTER TABLE "system_events_tracking" DROP CONSTRAINT "system_events_tracking_user_id_fkey";

-- AlterTable
ALTER TABLE "system_permissions" ALTER COLUMN "admin" SET DEFAULT false,
ALTER COLUMN "edit" SET DEFAULT false,
ALTER COLUMN "hard_delete" SET DEFAULT false,
ALTER COLUMN "read" SET DEFAULT false,
ALTER COLUMN "soft_delete" SET DEFAULT false,
ALTER COLUMN "write" SET DEFAULT false;

-- AlterTable
ALTER TABLE "system_users_events_tracking" ADD COLUMN     "type_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "system_users_permissions" ADD COLUMN     "permission_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "system_users_roles" ADD COLUMN     "role_id" INTEGER NOT NULL,
ADD COLUMN     "user_id" INTEGER NOT NULL;

-- DropTable
DROP TABLE "system_events_tracking";

-- AddForeignKey
ALTER TABLE "system_users_permissions" ADD CONSTRAINT "system_users_permissions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_permissions" ADD CONSTRAINT "system_users_permissions_permission_id_fkey" FOREIGN KEY ("permission_id") REFERENCES "system_permissions"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_roles" ADD CONSTRAINT "system_users_roles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_roles" ADD CONSTRAINT "system_users_roles_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "system_roles"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_events_tracking" ADD CONSTRAINT "system_users_events_tracking_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "system_users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "system_users_events_tracking" ADD CONSTRAINT "system_users_events_tracking_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "system_events_types_tracking"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
