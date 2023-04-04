import {
  createTRPCRouter,
  protectedProcedure,
} from "~/server/api/trpc";

export const assetsRouter = createTRPCRouter({
  getAll: protectedProcedure.query(({ ctx }) => {
   return ctx.prisma.assest.findMany({
     where: {
      userId:ctx.session.user.id
      }
    });
  }),

  // create: protectedProcedure
  //   .input(z.object({quantity:z.string(),invested_Amt:z.string(),current_Amt:z.string()}))
  //   .mutation(({ ctx, input }) => {
  //     return ctx.prisma.gold.create({
  //       data: {
  //         quantity: input.quantity,
  //         invested_Amt: input.invested_Amt,
  //         current_Amt: input.current_Amt,
  //       userId: ctx.session.user.id,
  //       },
  //     });
  //   }),

});


