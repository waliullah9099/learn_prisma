import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

export async function POST(req, res) {
  try {
    const reqBody = await req.json();

    const prisma = new PrismaClient();

    let result = await prisma.user.create({
      data: {
        email: "ms.habiba@gmail.com",
        password: "tmrIccha",
        profile: {
          create: {
            firstName: "MS ",
            lastName: "Habiba ",
            city: "Jetuya",
            postCode: "9420",
          },
        },
        post: {
          create: {
            title: "Demo",
            description: "demo",
          },
        },
      },
    });

    return NextResponse.json({ status: "success", data: result });
  } catch (e) {
    return NextResponse.json({ status: "Fail", data: e });
  }
}
