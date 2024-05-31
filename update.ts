import { Prisma, PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()


async function update() {
    let result = await prisma.user.updateMany({
        //한개 업데이트할떄는 updateMany 아닌 update로 써도된다는데 안되네
        where:{
            name: '가진석',
        },
        data :{ 
            //data 는 고정
            number: '9022222',
            //여긴 컬럼값
        },
    })  // 
    console.log(result)
}

// const updateUser = await prisma.user.update({
//     where: {
//       email: 'viola@prisma.io',
//     },
//     data: {
//       name: 'Viola the Magnificent',
//     },
//   })

// 공식사이트 
//https://www.prisma.io/docs/orm/prisma-client/queries/crud#update


update()

