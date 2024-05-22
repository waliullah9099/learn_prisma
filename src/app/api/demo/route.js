import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

export async function POST(req, res) {
  // const result5 = await prisma.employee.groupBy({
  //   by: ["city"],
  //   _sum: { salary: true },
  //   having: { city: "jetuya" },
  // });
  // const result3 = await prisma.employee.findMany({
  //   orderBy: { salary: "asc" },
  //   skip: 2,
  //   take: 3,
  //   select: { salary: true },
  // });

  // const result2 = await prisma.employee.findMany({
  //   include: {
  //     profile: {
  //       select: { lastName: true },
  //     },
  //     post: {
  //       where: { title: { contains: "de" } },
  //     },
  //     comment: true,
  //   },
  //   orderBy: { id: "desc" },
  // });

  // let result4 = await prisma.user.create({
  //   data: {
  //     email: "ms.habiba@gmail.com",
  //     password: "tmrIccha",
  //     profile: {
  //       create: {
  //         firstName: "MS ",
  //         lastName: "Habiba ",
  //         city: "Jetuya",
  //         postCode: "9420",
  //       },
  //     },
  //     post: {
  //       create: {
  //         title: "Demo",
  //         description: "demo",
  //       },
  //     },
  //   },
  // });

  // const transection = {
  //   const createUser = prisma.user.create({
  //     data: {
  //       email: "msHabiba@gmail.com",
  //       password: "tmrIccha",
  //     },
  //   });

  //   const deletePost = prisma.post.delete({
  //     where: { id: 4 },
  //   });

  //   const result = await prisma.$transaction([createUser, deletePost]);
  // }

  try {
    const { searchParams } = new URL(req.url);
    const id = parseInt(searchParams.get("id"));

    const reqBody = await req.json();
    const prisma = new PrismaClient();

    const result = await prisma.employee.findMany({
      where: {
        NOT: [{ name: { contains: "Habiba" } }, { salary: { gt: 700 } }],
      },
    });

    return NextResponse.json({
      status: "success",
      data: result,
    });
  } catch (e) {
    return NextResponse.json({ status: "Fail", data: e });
  }
}

// const startTime = Date.now();
// const prisma = new PrismaClient({
//   log: ["query", "info", "warn", "error"],
// });
// const excTime = Date.now() - startTime + " miliseconds";

// let result = await prisma.user.create({
//   data: {
//     email: "mssHabiba@gmail.com",
//     password: "tmrIccha",
//     profile: {
//       create: {
//         firstName: "MS ",
//         lastName: "Habiba ",
//         city: "Tala",
//         postCode: "9420",
//       },
//     },
//     post: {
//       create: {
//         title: "Tmi",
//         description: "Ha tomakei to bolse, suno na naki?  bujlam nato",
//       },
//     },
//   },
// });
