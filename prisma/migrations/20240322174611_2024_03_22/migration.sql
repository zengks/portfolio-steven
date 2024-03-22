/*
  Warnings:

  - You are about to drop the column `issuedNumber` on the `Certificate` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "BlogPost" ALTER COLUMN "published" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Certificate" DROP COLUMN "issuedNumber",
ADD COLUMN     "certNumber" TEXT,
ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "dateIssued" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Education" ALTER COLUMN "fieldOfStudy" DROP NOT NULL,
ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Profile" ALTER COLUMN "lastName" DROP NOT NULL,
ALTER COLUMN "bio" DROP NOT NULL,
ALTER COLUMN "imageLink" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Project" ALTER COLUMN "title" DROP NOT NULL,
ALTER COLUMN "repo_link" DROP NOT NULL,
ALTER COLUMN "project_link" DROP NOT NULL,
ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "preview_image_link" DROP NOT NULL;

-- AlterTable
ALTER TABLE "SocialMedia" ALTER COLUMN "logoLink" DROP NOT NULL;

-- AlterTable
ALTER TABLE "WorkExperience" ALTER COLUMN "description" DROP NOT NULL;
