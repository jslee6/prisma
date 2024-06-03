import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function create() {
    let result = await prisma.user.createMany({
        data: {
          name: '이진석3',
          age: 1234,
        },
      })
    console.log(result);
}

// const user = await prisma.user.create({
//     data: {
//       email: 'elsa@prisma.io',
//       name: 'Elsa Prisma',
//     },
//   })  기본

create()