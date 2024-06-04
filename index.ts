import { Prisma, PrismaClient } from "@prisma/client";
const prisma = new PrismaClient()

async function main() {
    let result = await prisma.usertest.findMany({
        select:{
            name: true,
            age: true,
        }
    })  // 셀렉트에서 name과 age 만 가져옴
    console.log(result)
}


async function selectAll() {
    let result2 = await prisma.usertest.findMany({
    })
    // 유저 테이블에서 findMany() 조건에 맞는거 모두 가져옴 셀렉트
    console.log(result2)
}

main()
selectAll()
