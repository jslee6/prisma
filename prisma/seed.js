import { PrismaClient } from '@prisma/client';
import { USERS} from './mock.js';

const prisma = new PrismaClient();

async function main() {
  // 기존 데이터 삭제
  await prisma.user.deleteMany();

  // 목 데이터 삽입
  await prisma.user.createMany({
    data: USERS,
    skipDuplicates: true,
  })
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });

  //프리즈마 공식문서에서 가져옴, 자세히 이해할필요는없음 메인함수를 안전하게 실행하고
  //db연결끊음
