
250623_TimeWatch_StopWatch.elf:     file format elf32-littlearm


Disassembly of section .text:

08000198 <__do_global_dtors_aux>:
 8000198:	b510      	push	{r4, lr}
 800019a:	4c05      	ldr	r4, [pc, #20]	@ (80001b0 <__do_global_dtors_aux+0x18>)
 800019c:	7823      	ldrb	r3, [r4, #0]
 800019e:	b933      	cbnz	r3, 80001ae <__do_global_dtors_aux+0x16>
 80001a0:	4b04      	ldr	r3, [pc, #16]	@ (80001b4 <__do_global_dtors_aux+0x1c>)
 80001a2:	b113      	cbz	r3, 80001aa <__do_global_dtors_aux+0x12>
 80001a4:	4804      	ldr	r0, [pc, #16]	@ (80001b8 <__do_global_dtors_aux+0x20>)
 80001a6:	f3af 8000 	nop.w
 80001aa:	2301      	movs	r3, #1
 80001ac:	7023      	strb	r3, [r4, #0]
 80001ae:	bd10      	pop	{r4, pc}
 80001b0:	2000006c 	.word	0x2000006c
 80001b4:	00000000 	.word	0x00000000
 80001b8:	0800242c 	.word	0x0800242c

080001bc <frame_dummy>:
 80001bc:	b508      	push	{r3, lr}
 80001be:	4b03      	ldr	r3, [pc, #12]	@ (80001cc <frame_dummy+0x10>)
 80001c0:	b11b      	cbz	r3, 80001ca <frame_dummy+0xe>
 80001c2:	4903      	ldr	r1, [pc, #12]	@ (80001d0 <frame_dummy+0x14>)
 80001c4:	4803      	ldr	r0, [pc, #12]	@ (80001d4 <frame_dummy+0x18>)
 80001c6:	f3af 8000 	nop.w
 80001ca:	bd08      	pop	{r3, pc}
 80001cc:	00000000 	.word	0x00000000
 80001d0:	20000070 	.word	0x20000070
 80001d4:	0800242c 	.word	0x0800242c

080001d8 <__aeabi_uldivmod>:
 80001d8:	b953      	cbnz	r3, 80001f0 <__aeabi_uldivmod+0x18>
 80001da:	b94a      	cbnz	r2, 80001f0 <__aeabi_uldivmod+0x18>
 80001dc:	2900      	cmp	r1, #0
 80001de:	bf08      	it	eq
 80001e0:	2800      	cmpeq	r0, #0
 80001e2:	bf1c      	itt	ne
 80001e4:	f04f 31ff 	movne.w	r1, #4294967295
 80001e8:	f04f 30ff 	movne.w	r0, #4294967295
 80001ec:	f000 b988 	b.w	8000500 <__aeabi_idiv0>
 80001f0:	f1ad 0c08 	sub.w	ip, sp, #8
 80001f4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80001f8:	f000 f806 	bl	8000208 <__udivmoddi4>
 80001fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000200:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000204:	b004      	add	sp, #16
 8000206:	4770      	bx	lr

08000208 <__udivmoddi4>:
 8000208:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800020c:	9d08      	ldr	r5, [sp, #32]
 800020e:	468e      	mov	lr, r1
 8000210:	4604      	mov	r4, r0
 8000212:	4688      	mov	r8, r1
 8000214:	2b00      	cmp	r3, #0
 8000216:	d14a      	bne.n	80002ae <__udivmoddi4+0xa6>
 8000218:	428a      	cmp	r2, r1
 800021a:	4617      	mov	r7, r2
 800021c:	d962      	bls.n	80002e4 <__udivmoddi4+0xdc>
 800021e:	fab2 f682 	clz	r6, r2
 8000222:	b14e      	cbz	r6, 8000238 <__udivmoddi4+0x30>
 8000224:	f1c6 0320 	rsb	r3, r6, #32
 8000228:	fa01 f806 	lsl.w	r8, r1, r6
 800022c:	fa20 f303 	lsr.w	r3, r0, r3
 8000230:	40b7      	lsls	r7, r6
 8000232:	ea43 0808 	orr.w	r8, r3, r8
 8000236:	40b4      	lsls	r4, r6
 8000238:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 800023c:	fa1f fc87 	uxth.w	ip, r7
 8000240:	fbb8 f1fe 	udiv	r1, r8, lr
 8000244:	0c23      	lsrs	r3, r4, #16
 8000246:	fb0e 8811 	mls	r8, lr, r1, r8
 800024a:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 800024e:	fb01 f20c 	mul.w	r2, r1, ip
 8000252:	429a      	cmp	r2, r3
 8000254:	d909      	bls.n	800026a <__udivmoddi4+0x62>
 8000256:	18fb      	adds	r3, r7, r3
 8000258:	f101 30ff 	add.w	r0, r1, #4294967295
 800025c:	f080 80ea 	bcs.w	8000434 <__udivmoddi4+0x22c>
 8000260:	429a      	cmp	r2, r3
 8000262:	f240 80e7 	bls.w	8000434 <__udivmoddi4+0x22c>
 8000266:	3902      	subs	r1, #2
 8000268:	443b      	add	r3, r7
 800026a:	1a9a      	subs	r2, r3, r2
 800026c:	b2a3      	uxth	r3, r4
 800026e:	fbb2 f0fe 	udiv	r0, r2, lr
 8000272:	fb0e 2210 	mls	r2, lr, r0, r2
 8000276:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800027a:	fb00 fc0c 	mul.w	ip, r0, ip
 800027e:	459c      	cmp	ip, r3
 8000280:	d909      	bls.n	8000296 <__udivmoddi4+0x8e>
 8000282:	18fb      	adds	r3, r7, r3
 8000284:	f100 32ff 	add.w	r2, r0, #4294967295
 8000288:	f080 80d6 	bcs.w	8000438 <__udivmoddi4+0x230>
 800028c:	459c      	cmp	ip, r3
 800028e:	f240 80d3 	bls.w	8000438 <__udivmoddi4+0x230>
 8000292:	443b      	add	r3, r7
 8000294:	3802      	subs	r0, #2
 8000296:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 800029a:	eba3 030c 	sub.w	r3, r3, ip
 800029e:	2100      	movs	r1, #0
 80002a0:	b11d      	cbz	r5, 80002aa <__udivmoddi4+0xa2>
 80002a2:	40f3      	lsrs	r3, r6
 80002a4:	2200      	movs	r2, #0
 80002a6:	e9c5 3200 	strd	r3, r2, [r5]
 80002aa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002ae:	428b      	cmp	r3, r1
 80002b0:	d905      	bls.n	80002be <__udivmoddi4+0xb6>
 80002b2:	b10d      	cbz	r5, 80002b8 <__udivmoddi4+0xb0>
 80002b4:	e9c5 0100 	strd	r0, r1, [r5]
 80002b8:	2100      	movs	r1, #0
 80002ba:	4608      	mov	r0, r1
 80002bc:	e7f5      	b.n	80002aa <__udivmoddi4+0xa2>
 80002be:	fab3 f183 	clz	r1, r3
 80002c2:	2900      	cmp	r1, #0
 80002c4:	d146      	bne.n	8000354 <__udivmoddi4+0x14c>
 80002c6:	4573      	cmp	r3, lr
 80002c8:	d302      	bcc.n	80002d0 <__udivmoddi4+0xc8>
 80002ca:	4282      	cmp	r2, r0
 80002cc:	f200 8105 	bhi.w	80004da <__udivmoddi4+0x2d2>
 80002d0:	1a84      	subs	r4, r0, r2
 80002d2:	eb6e 0203 	sbc.w	r2, lr, r3
 80002d6:	2001      	movs	r0, #1
 80002d8:	4690      	mov	r8, r2
 80002da:	2d00      	cmp	r5, #0
 80002dc:	d0e5      	beq.n	80002aa <__udivmoddi4+0xa2>
 80002de:	e9c5 4800 	strd	r4, r8, [r5]
 80002e2:	e7e2      	b.n	80002aa <__udivmoddi4+0xa2>
 80002e4:	2a00      	cmp	r2, #0
 80002e6:	f000 8090 	beq.w	800040a <__udivmoddi4+0x202>
 80002ea:	fab2 f682 	clz	r6, r2
 80002ee:	2e00      	cmp	r6, #0
 80002f0:	f040 80a4 	bne.w	800043c <__udivmoddi4+0x234>
 80002f4:	1a8a      	subs	r2, r1, r2
 80002f6:	0c03      	lsrs	r3, r0, #16
 80002f8:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 80002fc:	b280      	uxth	r0, r0
 80002fe:	b2bc      	uxth	r4, r7
 8000300:	2101      	movs	r1, #1
 8000302:	fbb2 fcfe 	udiv	ip, r2, lr
 8000306:	fb0e 221c 	mls	r2, lr, ip, r2
 800030a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800030e:	fb04 f20c 	mul.w	r2, r4, ip
 8000312:	429a      	cmp	r2, r3
 8000314:	d907      	bls.n	8000326 <__udivmoddi4+0x11e>
 8000316:	18fb      	adds	r3, r7, r3
 8000318:	f10c 38ff 	add.w	r8, ip, #4294967295
 800031c:	d202      	bcs.n	8000324 <__udivmoddi4+0x11c>
 800031e:	429a      	cmp	r2, r3
 8000320:	f200 80e0 	bhi.w	80004e4 <__udivmoddi4+0x2dc>
 8000324:	46c4      	mov	ip, r8
 8000326:	1a9b      	subs	r3, r3, r2
 8000328:	fbb3 f2fe 	udiv	r2, r3, lr
 800032c:	fb0e 3312 	mls	r3, lr, r2, r3
 8000330:	ea40 4303 	orr.w	r3, r0, r3, lsl #16
 8000334:	fb02 f404 	mul.w	r4, r2, r4
 8000338:	429c      	cmp	r4, r3
 800033a:	d907      	bls.n	800034c <__udivmoddi4+0x144>
 800033c:	18fb      	adds	r3, r7, r3
 800033e:	f102 30ff 	add.w	r0, r2, #4294967295
 8000342:	d202      	bcs.n	800034a <__udivmoddi4+0x142>
 8000344:	429c      	cmp	r4, r3
 8000346:	f200 80ca 	bhi.w	80004de <__udivmoddi4+0x2d6>
 800034a:	4602      	mov	r2, r0
 800034c:	1b1b      	subs	r3, r3, r4
 800034e:	ea42 400c 	orr.w	r0, r2, ip, lsl #16
 8000352:	e7a5      	b.n	80002a0 <__udivmoddi4+0x98>
 8000354:	f1c1 0620 	rsb	r6, r1, #32
 8000358:	408b      	lsls	r3, r1
 800035a:	fa22 f706 	lsr.w	r7, r2, r6
 800035e:	431f      	orrs	r7, r3
 8000360:	fa0e f401 	lsl.w	r4, lr, r1
 8000364:	fa20 f306 	lsr.w	r3, r0, r6
 8000368:	fa2e fe06 	lsr.w	lr, lr, r6
 800036c:	ea4f 4917 	mov.w	r9, r7, lsr #16
 8000370:	4323      	orrs	r3, r4
 8000372:	fa00 f801 	lsl.w	r8, r0, r1
 8000376:	fa1f fc87 	uxth.w	ip, r7
 800037a:	fbbe f0f9 	udiv	r0, lr, r9
 800037e:	0c1c      	lsrs	r4, r3, #16
 8000380:	fb09 ee10 	mls	lr, r9, r0, lr
 8000384:	ea44 440e 	orr.w	r4, r4, lr, lsl #16
 8000388:	fb00 fe0c 	mul.w	lr, r0, ip
 800038c:	45a6      	cmp	lr, r4
 800038e:	fa02 f201 	lsl.w	r2, r2, r1
 8000392:	d909      	bls.n	80003a8 <__udivmoddi4+0x1a0>
 8000394:	193c      	adds	r4, r7, r4
 8000396:	f100 3aff 	add.w	sl, r0, #4294967295
 800039a:	f080 809c 	bcs.w	80004d6 <__udivmoddi4+0x2ce>
 800039e:	45a6      	cmp	lr, r4
 80003a0:	f240 8099 	bls.w	80004d6 <__udivmoddi4+0x2ce>
 80003a4:	3802      	subs	r0, #2
 80003a6:	443c      	add	r4, r7
 80003a8:	eba4 040e 	sub.w	r4, r4, lr
 80003ac:	fa1f fe83 	uxth.w	lr, r3
 80003b0:	fbb4 f3f9 	udiv	r3, r4, r9
 80003b4:	fb09 4413 	mls	r4, r9, r3, r4
 80003b8:	ea4e 4404 	orr.w	r4, lr, r4, lsl #16
 80003bc:	fb03 fc0c 	mul.w	ip, r3, ip
 80003c0:	45a4      	cmp	ip, r4
 80003c2:	d908      	bls.n	80003d6 <__udivmoddi4+0x1ce>
 80003c4:	193c      	adds	r4, r7, r4
 80003c6:	f103 3eff 	add.w	lr, r3, #4294967295
 80003ca:	f080 8082 	bcs.w	80004d2 <__udivmoddi4+0x2ca>
 80003ce:	45a4      	cmp	ip, r4
 80003d0:	d97f      	bls.n	80004d2 <__udivmoddi4+0x2ca>
 80003d2:	3b02      	subs	r3, #2
 80003d4:	443c      	add	r4, r7
 80003d6:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 80003da:	eba4 040c 	sub.w	r4, r4, ip
 80003de:	fba0 ec02 	umull	lr, ip, r0, r2
 80003e2:	4564      	cmp	r4, ip
 80003e4:	4673      	mov	r3, lr
 80003e6:	46e1      	mov	r9, ip
 80003e8:	d362      	bcc.n	80004b0 <__udivmoddi4+0x2a8>
 80003ea:	d05f      	beq.n	80004ac <__udivmoddi4+0x2a4>
 80003ec:	b15d      	cbz	r5, 8000406 <__udivmoddi4+0x1fe>
 80003ee:	ebb8 0203 	subs.w	r2, r8, r3
 80003f2:	eb64 0409 	sbc.w	r4, r4, r9
 80003f6:	fa04 f606 	lsl.w	r6, r4, r6
 80003fa:	fa22 f301 	lsr.w	r3, r2, r1
 80003fe:	431e      	orrs	r6, r3
 8000400:	40cc      	lsrs	r4, r1
 8000402:	e9c5 6400 	strd	r6, r4, [r5]
 8000406:	2100      	movs	r1, #0
 8000408:	e74f      	b.n	80002aa <__udivmoddi4+0xa2>
 800040a:	fbb1 fcf2 	udiv	ip, r1, r2
 800040e:	0c01      	lsrs	r1, r0, #16
 8000410:	ea41 410e 	orr.w	r1, r1, lr, lsl #16
 8000414:	b280      	uxth	r0, r0
 8000416:	ea40 4201 	orr.w	r2, r0, r1, lsl #16
 800041a:	463b      	mov	r3, r7
 800041c:	4638      	mov	r0, r7
 800041e:	463c      	mov	r4, r7
 8000420:	46b8      	mov	r8, r7
 8000422:	46be      	mov	lr, r7
 8000424:	2620      	movs	r6, #32
 8000426:	fbb1 f1f7 	udiv	r1, r1, r7
 800042a:	eba2 0208 	sub.w	r2, r2, r8
 800042e:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
 8000432:	e766      	b.n	8000302 <__udivmoddi4+0xfa>
 8000434:	4601      	mov	r1, r0
 8000436:	e718      	b.n	800026a <__udivmoddi4+0x62>
 8000438:	4610      	mov	r0, r2
 800043a:	e72c      	b.n	8000296 <__udivmoddi4+0x8e>
 800043c:	f1c6 0220 	rsb	r2, r6, #32
 8000440:	fa2e f302 	lsr.w	r3, lr, r2
 8000444:	40b7      	lsls	r7, r6
 8000446:	40b1      	lsls	r1, r6
 8000448:	fa20 f202 	lsr.w	r2, r0, r2
 800044c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000450:	430a      	orrs	r2, r1
 8000452:	fbb3 f8fe 	udiv	r8, r3, lr
 8000456:	b2bc      	uxth	r4, r7
 8000458:	fb0e 3318 	mls	r3, lr, r8, r3
 800045c:	0c11      	lsrs	r1, r2, #16
 800045e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000462:	fb08 f904 	mul.w	r9, r8, r4
 8000466:	40b0      	lsls	r0, r6
 8000468:	4589      	cmp	r9, r1
 800046a:	ea4f 4310 	mov.w	r3, r0, lsr #16
 800046e:	b280      	uxth	r0, r0
 8000470:	d93e      	bls.n	80004f0 <__udivmoddi4+0x2e8>
 8000472:	1879      	adds	r1, r7, r1
 8000474:	f108 3cff 	add.w	ip, r8, #4294967295
 8000478:	d201      	bcs.n	800047e <__udivmoddi4+0x276>
 800047a:	4589      	cmp	r9, r1
 800047c:	d81f      	bhi.n	80004be <__udivmoddi4+0x2b6>
 800047e:	eba1 0109 	sub.w	r1, r1, r9
 8000482:	fbb1 f9fe 	udiv	r9, r1, lr
 8000486:	fb09 f804 	mul.w	r8, r9, r4
 800048a:	fb0e 1119 	mls	r1, lr, r9, r1
 800048e:	b292      	uxth	r2, r2
 8000490:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8000494:	4542      	cmp	r2, r8
 8000496:	d229      	bcs.n	80004ec <__udivmoddi4+0x2e4>
 8000498:	18ba      	adds	r2, r7, r2
 800049a:	f109 31ff 	add.w	r1, r9, #4294967295
 800049e:	d2c4      	bcs.n	800042a <__udivmoddi4+0x222>
 80004a0:	4542      	cmp	r2, r8
 80004a2:	d2c2      	bcs.n	800042a <__udivmoddi4+0x222>
 80004a4:	f1a9 0102 	sub.w	r1, r9, #2
 80004a8:	443a      	add	r2, r7
 80004aa:	e7be      	b.n	800042a <__udivmoddi4+0x222>
 80004ac:	45f0      	cmp	r8, lr
 80004ae:	d29d      	bcs.n	80003ec <__udivmoddi4+0x1e4>
 80004b0:	ebbe 0302 	subs.w	r3, lr, r2
 80004b4:	eb6c 0c07 	sbc.w	ip, ip, r7
 80004b8:	3801      	subs	r0, #1
 80004ba:	46e1      	mov	r9, ip
 80004bc:	e796      	b.n	80003ec <__udivmoddi4+0x1e4>
 80004be:	eba7 0909 	sub.w	r9, r7, r9
 80004c2:	4449      	add	r1, r9
 80004c4:	f1a8 0c02 	sub.w	ip, r8, #2
 80004c8:	fbb1 f9fe 	udiv	r9, r1, lr
 80004cc:	fb09 f804 	mul.w	r8, r9, r4
 80004d0:	e7db      	b.n	800048a <__udivmoddi4+0x282>
 80004d2:	4673      	mov	r3, lr
 80004d4:	e77f      	b.n	80003d6 <__udivmoddi4+0x1ce>
 80004d6:	4650      	mov	r0, sl
 80004d8:	e766      	b.n	80003a8 <__udivmoddi4+0x1a0>
 80004da:	4608      	mov	r0, r1
 80004dc:	e6fd      	b.n	80002da <__udivmoddi4+0xd2>
 80004de:	443b      	add	r3, r7
 80004e0:	3a02      	subs	r2, #2
 80004e2:	e733      	b.n	800034c <__udivmoddi4+0x144>
 80004e4:	f1ac 0c02 	sub.w	ip, ip, #2
 80004e8:	443b      	add	r3, r7
 80004ea:	e71c      	b.n	8000326 <__udivmoddi4+0x11e>
 80004ec:	4649      	mov	r1, r9
 80004ee:	e79c      	b.n	800042a <__udivmoddi4+0x222>
 80004f0:	eba1 0109 	sub.w	r1, r1, r9
 80004f4:	46c4      	mov	ip, r8
 80004f6:	fbb1 f9fe 	udiv	r9, r1, lr
 80004fa:	fb09 f804 	mul.w	r8, r9, r4
 80004fe:	e7c4      	b.n	800048a <__udivmoddi4+0x282>

08000500 <__aeabi_idiv0>:
 8000500:	4770      	bx	lr
 8000502:	bf00      	nop

08000504 <MX_GPIO_Init>:
 8000504:	b580      	push	{r7, lr}
 8000506:	b08a      	sub	sp, #40	@ 0x28
 8000508:	af00      	add	r7, sp, #0
 800050a:	f107 0314 	add.w	r3, r7, #20
 800050e:	2200      	movs	r2, #0
 8000510:	601a      	str	r2, [r3, #0]
 8000512:	605a      	str	r2, [r3, #4]
 8000514:	609a      	str	r2, [r3, #8]
 8000516:	60da      	str	r2, [r3, #12]
 8000518:	611a      	str	r2, [r3, #16]
 800051a:	2300      	movs	r3, #0
 800051c:	613b      	str	r3, [r7, #16]
 800051e:	4b49      	ldr	r3, [pc, #292]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000520:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000522:	4a48      	ldr	r2, [pc, #288]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000524:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8000528:	6313      	str	r3, [r2, #48]	@ 0x30
 800052a:	4b46      	ldr	r3, [pc, #280]	@ (8000644 <MX_GPIO_Init+0x140>)
 800052c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800052e:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8000532:	613b      	str	r3, [r7, #16]
 8000534:	693b      	ldr	r3, [r7, #16]
 8000536:	2300      	movs	r3, #0
 8000538:	60fb      	str	r3, [r7, #12]
 800053a:	4b42      	ldr	r3, [pc, #264]	@ (8000644 <MX_GPIO_Init+0x140>)
 800053c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800053e:	4a41      	ldr	r2, [pc, #260]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000540:	f043 0304 	orr.w	r3, r3, #4
 8000544:	6313      	str	r3, [r2, #48]	@ 0x30
 8000546:	4b3f      	ldr	r3, [pc, #252]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000548:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800054a:	f003 0304 	and.w	r3, r3, #4
 800054e:	60fb      	str	r3, [r7, #12]
 8000550:	68fb      	ldr	r3, [r7, #12]
 8000552:	2300      	movs	r3, #0
 8000554:	60bb      	str	r3, [r7, #8]
 8000556:	4b3b      	ldr	r3, [pc, #236]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000558:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800055a:	4a3a      	ldr	r2, [pc, #232]	@ (8000644 <MX_GPIO_Init+0x140>)
 800055c:	f043 0302 	orr.w	r3, r3, #2
 8000560:	6313      	str	r3, [r2, #48]	@ 0x30
 8000562:	4b38      	ldr	r3, [pc, #224]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000564:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000566:	f003 0302 	and.w	r3, r3, #2
 800056a:	60bb      	str	r3, [r7, #8]
 800056c:	68bb      	ldr	r3, [r7, #8]
 800056e:	2300      	movs	r3, #0
 8000570:	607b      	str	r3, [r7, #4]
 8000572:	4b34      	ldr	r3, [pc, #208]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000574:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000576:	4a33      	ldr	r2, [pc, #204]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000578:	f043 0301 	orr.w	r3, r3, #1
 800057c:	6313      	str	r3, [r2, #48]	@ 0x30
 800057e:	4b31      	ldr	r3, [pc, #196]	@ (8000644 <MX_GPIO_Init+0x140>)
 8000580:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8000582:	f003 0301 	and.w	r3, r3, #1
 8000586:	607b      	str	r3, [r7, #4]
 8000588:	687b      	ldr	r3, [r7, #4]
 800058a:	2200      	movs	r2, #0
 800058c:	f44f 71b8 	mov.w	r1, #368	@ 0x170
 8000590:	482d      	ldr	r0, [pc, #180]	@ (8000648 <MX_GPIO_Init+0x144>)
 8000592:	f000 fe6d 	bl	8001270 <HAL_GPIO_WritePin>
 8000596:	2200      	movs	r2, #0
 8000598:	f24f 0106 	movw	r1, #61446	@ 0xf006
 800059c:	482b      	ldr	r0, [pc, #172]	@ (800064c <MX_GPIO_Init+0x148>)
 800059e:	f000 fe67 	bl	8001270 <HAL_GPIO_WritePin>
 80005a2:	2200      	movs	r2, #0
 80005a4:	f44f 51c0 	mov.w	r1, #6144	@ 0x1800
 80005a8:	4829      	ldr	r0, [pc, #164]	@ (8000650 <MX_GPIO_Init+0x14c>)
 80005aa:	f000 fe61 	bl	8001270 <HAL_GPIO_WritePin>
 80005ae:	f44f 73b8 	mov.w	r3, #368	@ 0x170
 80005b2:	617b      	str	r3, [r7, #20]
 80005b4:	2301      	movs	r3, #1
 80005b6:	61bb      	str	r3, [r7, #24]
 80005b8:	2300      	movs	r3, #0
 80005ba:	61fb      	str	r3, [r7, #28]
 80005bc:	2300      	movs	r3, #0
 80005be:	623b      	str	r3, [r7, #32]
 80005c0:	f107 0314 	add.w	r3, r7, #20
 80005c4:	4619      	mov	r1, r3
 80005c6:	4820      	ldr	r0, [pc, #128]	@ (8000648 <MX_GPIO_Init+0x144>)
 80005c8:	f000 fcce 	bl	8000f68 <HAL_GPIO_Init>
 80005cc:	f24f 0306 	movw	r3, #61446	@ 0xf006
 80005d0:	617b      	str	r3, [r7, #20]
 80005d2:	2301      	movs	r3, #1
 80005d4:	61bb      	str	r3, [r7, #24]
 80005d6:	2300      	movs	r3, #0
 80005d8:	61fb      	str	r3, [r7, #28]
 80005da:	2300      	movs	r3, #0
 80005dc:	623b      	str	r3, [r7, #32]
 80005de:	f107 0314 	add.w	r3, r7, #20
 80005e2:	4619      	mov	r1, r3
 80005e4:	4819      	ldr	r0, [pc, #100]	@ (800064c <MX_GPIO_Init+0x148>)
 80005e6:	f000 fcbf 	bl	8000f68 <HAL_GPIO_Init>
 80005ea:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80005ee:	617b      	str	r3, [r7, #20]
 80005f0:	2300      	movs	r3, #0
 80005f2:	61bb      	str	r3, [r7, #24]
 80005f4:	2300      	movs	r3, #0
 80005f6:	61fb      	str	r3, [r7, #28]
 80005f8:	f107 0314 	add.w	r3, r7, #20
 80005fc:	4619      	mov	r1, r3
 80005fe:	4814      	ldr	r0, [pc, #80]	@ (8000650 <MX_GPIO_Init+0x14c>)
 8000600:	f000 fcb2 	bl	8000f68 <HAL_GPIO_Init>
 8000604:	f44f 53c0 	mov.w	r3, #6144	@ 0x1800
 8000608:	617b      	str	r3, [r7, #20]
 800060a:	2301      	movs	r3, #1
 800060c:	61bb      	str	r3, [r7, #24]
 800060e:	2300      	movs	r3, #0
 8000610:	61fb      	str	r3, [r7, #28]
 8000612:	2300      	movs	r3, #0
 8000614:	623b      	str	r3, [r7, #32]
 8000616:	f107 0314 	add.w	r3, r7, #20
 800061a:	4619      	mov	r1, r3
 800061c:	480c      	ldr	r0, [pc, #48]	@ (8000650 <MX_GPIO_Init+0x14c>)
 800061e:	f000 fca3 	bl	8000f68 <HAL_GPIO_Init>
 8000622:	2328      	movs	r3, #40	@ 0x28
 8000624:	617b      	str	r3, [r7, #20]
 8000626:	2300      	movs	r3, #0
 8000628:	61bb      	str	r3, [r7, #24]
 800062a:	2300      	movs	r3, #0
 800062c:	61fb      	str	r3, [r7, #28]
 800062e:	f107 0314 	add.w	r3, r7, #20
 8000632:	4619      	mov	r1, r3
 8000634:	4805      	ldr	r0, [pc, #20]	@ (800064c <MX_GPIO_Init+0x148>)
 8000636:	f000 fc97 	bl	8000f68 <HAL_GPIO_Init>
 800063a:	bf00      	nop
 800063c:	3728      	adds	r7, #40	@ 0x28
 800063e:	46bd      	mov	sp, r7
 8000640:	bd80      	pop	{r7, pc}
 8000642:	bf00      	nop
 8000644:	40023800 	.word	0x40023800
 8000648:	40020800 	.word	0x40020800
 800064c:	40020400 	.word	0x40020400
 8000650:	40020000 	.word	0x40020000

08000654 <main>:
 8000654:	b580      	push	{r7, lr}
 8000656:	af00      	add	r7, sp, #0
 8000658:	f000 fb02 	bl	8000c60 <HAL_Init>
 800065c:	f000 f80a 	bl	8000674 <SystemClock_Config>
 8000660:	f7ff ff50 	bl	8000504 <MX_GPIO_Init>
 8000664:	f000 f8e8 	bl	8000838 <MX_TIM2_Init>
 8000668:	f000 f99e 	bl	80009a8 <ap_Init>
 800066c:	f000 f98e 	bl	800098c <ap_main>
 8000670:	e7fc      	b.n	800066c <main+0x18>
	...

08000674 <SystemClock_Config>:
 8000674:	b580      	push	{r7, lr}
 8000676:	b094      	sub	sp, #80	@ 0x50
 8000678:	af00      	add	r7, sp, #0
 800067a:	f107 0320 	add.w	r3, r7, #32
 800067e:	2230      	movs	r2, #48	@ 0x30
 8000680:	2100      	movs	r1, #0
 8000682:	4618      	mov	r0, r3
 8000684:	f001 fea6 	bl	80023d4 <memset>
 8000688:	f107 030c 	add.w	r3, r7, #12
 800068c:	2200      	movs	r2, #0
 800068e:	601a      	str	r2, [r3, #0]
 8000690:	605a      	str	r2, [r3, #4]
 8000692:	609a      	str	r2, [r3, #8]
 8000694:	60da      	str	r2, [r3, #12]
 8000696:	611a      	str	r2, [r3, #16]
 8000698:	2300      	movs	r3, #0
 800069a:	60bb      	str	r3, [r7, #8]
 800069c:	4b27      	ldr	r3, [pc, #156]	@ (800073c <SystemClock_Config+0xc8>)
 800069e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80006a0:	4a26      	ldr	r2, [pc, #152]	@ (800073c <SystemClock_Config+0xc8>)
 80006a2:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 80006a6:	6413      	str	r3, [r2, #64]	@ 0x40
 80006a8:	4b24      	ldr	r3, [pc, #144]	@ (800073c <SystemClock_Config+0xc8>)
 80006aa:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80006ac:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80006b0:	60bb      	str	r3, [r7, #8]
 80006b2:	68bb      	ldr	r3, [r7, #8]
 80006b4:	2300      	movs	r3, #0
 80006b6:	607b      	str	r3, [r7, #4]
 80006b8:	4b21      	ldr	r3, [pc, #132]	@ (8000740 <SystemClock_Config+0xcc>)
 80006ba:	681b      	ldr	r3, [r3, #0]
 80006bc:	4a20      	ldr	r2, [pc, #128]	@ (8000740 <SystemClock_Config+0xcc>)
 80006be:	f443 4340 	orr.w	r3, r3, #49152	@ 0xc000
 80006c2:	6013      	str	r3, [r2, #0]
 80006c4:	4b1e      	ldr	r3, [pc, #120]	@ (8000740 <SystemClock_Config+0xcc>)
 80006c6:	681b      	ldr	r3, [r3, #0]
 80006c8:	f403 4340 	and.w	r3, r3, #49152	@ 0xc000
 80006cc:	607b      	str	r3, [r7, #4]
 80006ce:	687b      	ldr	r3, [r7, #4]
 80006d0:	2301      	movs	r3, #1
 80006d2:	623b      	str	r3, [r7, #32]
 80006d4:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
 80006d8:	627b      	str	r3, [r7, #36]	@ 0x24
 80006da:	2302      	movs	r3, #2
 80006dc:	63bb      	str	r3, [r7, #56]	@ 0x38
 80006de:	f44f 0380 	mov.w	r3, #4194304	@ 0x400000
 80006e2:	63fb      	str	r3, [r7, #60]	@ 0x3c
 80006e4:	2304      	movs	r3, #4
 80006e6:	643b      	str	r3, [r7, #64]	@ 0x40
 80006e8:	2364      	movs	r3, #100	@ 0x64
 80006ea:	647b      	str	r3, [r7, #68]	@ 0x44
 80006ec:	2302      	movs	r3, #2
 80006ee:	64bb      	str	r3, [r7, #72]	@ 0x48
 80006f0:	2304      	movs	r3, #4
 80006f2:	64fb      	str	r3, [r7, #76]	@ 0x4c
 80006f4:	f107 0320 	add.w	r3, r7, #32
 80006f8:	4618      	mov	r0, r3
 80006fa:	f000 fdd3 	bl	80012a4 <HAL_RCC_OscConfig>
 80006fe:	4603      	mov	r3, r0
 8000700:	2b00      	cmp	r3, #0
 8000702:	d001      	beq.n	8000708 <SystemClock_Config+0x94>
 8000704:	f000 f81e 	bl	8000744 <Error_Handler>
 8000708:	230f      	movs	r3, #15
 800070a:	60fb      	str	r3, [r7, #12]
 800070c:	2302      	movs	r3, #2
 800070e:	613b      	str	r3, [r7, #16]
 8000710:	2300      	movs	r3, #0
 8000712:	617b      	str	r3, [r7, #20]
 8000714:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000718:	61bb      	str	r3, [r7, #24]
 800071a:	2300      	movs	r3, #0
 800071c:	61fb      	str	r3, [r7, #28]
 800071e:	f107 030c 	add.w	r3, r7, #12
 8000722:	2103      	movs	r1, #3
 8000724:	4618      	mov	r0, r3
 8000726:	f001 f835 	bl	8001794 <HAL_RCC_ClockConfig>
 800072a:	4603      	mov	r3, r0
 800072c:	2b00      	cmp	r3, #0
 800072e:	d001      	beq.n	8000734 <SystemClock_Config+0xc0>
 8000730:	f000 f808 	bl	8000744 <Error_Handler>
 8000734:	bf00      	nop
 8000736:	3750      	adds	r7, #80	@ 0x50
 8000738:	46bd      	mov	sp, r7
 800073a:	bd80      	pop	{r7, pc}
 800073c:	40023800 	.word	0x40023800
 8000740:	40007000 	.word	0x40007000

08000744 <Error_Handler>:
 8000744:	b480      	push	{r7}
 8000746:	af00      	add	r7, sp, #0
 8000748:	b672      	cpsid	i
 800074a:	bf00      	nop
 800074c:	bf00      	nop
 800074e:	e7fd      	b.n	800074c <Error_Handler+0x8>

08000750 <HAL_MspInit>:
 8000750:	b480      	push	{r7}
 8000752:	b083      	sub	sp, #12
 8000754:	af00      	add	r7, sp, #0
 8000756:	2300      	movs	r3, #0
 8000758:	607b      	str	r3, [r7, #4]
 800075a:	4b10      	ldr	r3, [pc, #64]	@ (800079c <HAL_MspInit+0x4c>)
 800075c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800075e:	4a0f      	ldr	r2, [pc, #60]	@ (800079c <HAL_MspInit+0x4c>)
 8000760:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8000764:	6453      	str	r3, [r2, #68]	@ 0x44
 8000766:	4b0d      	ldr	r3, [pc, #52]	@ (800079c <HAL_MspInit+0x4c>)
 8000768:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800076a:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 800076e:	607b      	str	r3, [r7, #4]
 8000770:	687b      	ldr	r3, [r7, #4]
 8000772:	2300      	movs	r3, #0
 8000774:	603b      	str	r3, [r7, #0]
 8000776:	4b09      	ldr	r3, [pc, #36]	@ (800079c <HAL_MspInit+0x4c>)
 8000778:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800077a:	4a08      	ldr	r2, [pc, #32]	@ (800079c <HAL_MspInit+0x4c>)
 800077c:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000780:	6413      	str	r3, [r2, #64]	@ 0x40
 8000782:	4b06      	ldr	r3, [pc, #24]	@ (800079c <HAL_MspInit+0x4c>)
 8000784:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000786:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 800078a:	603b      	str	r3, [r7, #0]
 800078c:	683b      	ldr	r3, [r7, #0]
 800078e:	bf00      	nop
 8000790:	370c      	adds	r7, #12
 8000792:	46bd      	mov	sp, r7
 8000794:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000798:	4770      	bx	lr
 800079a:	bf00      	nop
 800079c:	40023800 	.word	0x40023800

080007a0 <NMI_Handler>:
 80007a0:	b480      	push	{r7}
 80007a2:	af00      	add	r7, sp, #0
 80007a4:	bf00      	nop
 80007a6:	e7fd      	b.n	80007a4 <NMI_Handler+0x4>

080007a8 <HardFault_Handler>:
 80007a8:	b480      	push	{r7}
 80007aa:	af00      	add	r7, sp, #0
 80007ac:	bf00      	nop
 80007ae:	e7fd      	b.n	80007ac <HardFault_Handler+0x4>

080007b0 <MemManage_Handler>:
 80007b0:	b480      	push	{r7}
 80007b2:	af00      	add	r7, sp, #0
 80007b4:	bf00      	nop
 80007b6:	e7fd      	b.n	80007b4 <MemManage_Handler+0x4>

080007b8 <BusFault_Handler>:
 80007b8:	b480      	push	{r7}
 80007ba:	af00      	add	r7, sp, #0
 80007bc:	bf00      	nop
 80007be:	e7fd      	b.n	80007bc <BusFault_Handler+0x4>

080007c0 <UsageFault_Handler>:
 80007c0:	b480      	push	{r7}
 80007c2:	af00      	add	r7, sp, #0
 80007c4:	bf00      	nop
 80007c6:	e7fd      	b.n	80007c4 <UsageFault_Handler+0x4>

080007c8 <SVC_Handler>:
 80007c8:	b480      	push	{r7}
 80007ca:	af00      	add	r7, sp, #0
 80007cc:	bf00      	nop
 80007ce:	46bd      	mov	sp, r7
 80007d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007d4:	4770      	bx	lr

080007d6 <DebugMon_Handler>:
 80007d6:	b480      	push	{r7}
 80007d8:	af00      	add	r7, sp, #0
 80007da:	bf00      	nop
 80007dc:	46bd      	mov	sp, r7
 80007de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007e2:	4770      	bx	lr

080007e4 <PendSV_Handler>:
 80007e4:	b480      	push	{r7}
 80007e6:	af00      	add	r7, sp, #0
 80007e8:	bf00      	nop
 80007ea:	46bd      	mov	sp, r7
 80007ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007f0:	4770      	bx	lr

080007f2 <SysTick_Handler>:
 80007f2:	b580      	push	{r7, lr}
 80007f4:	af00      	add	r7, sp, #0
 80007f6:	f000 fa85 	bl	8000d04 <HAL_IncTick>
 80007fa:	bf00      	nop
 80007fc:	bd80      	pop	{r7, pc}
	...

08000800 <TIM2_IRQHandler>:
 8000800:	b580      	push	{r7, lr}
 8000802:	af00      	add	r7, sp, #0
 8000804:	4802      	ldr	r0, [pc, #8]	@ (8000810 <TIM2_IRQHandler+0x10>)
 8000806:	f001 fa63 	bl	8001cd0 <HAL_TIM_IRQHandler>
 800080a:	bf00      	nop
 800080c:	bd80      	pop	{r7, pc}
 800080e:	bf00      	nop
 8000810:	20000088 	.word	0x20000088

08000814 <SystemInit>:
 8000814:	b480      	push	{r7}
 8000816:	af00      	add	r7, sp, #0
 8000818:	4b06      	ldr	r3, [pc, #24]	@ (8000834 <SystemInit+0x20>)
 800081a:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 800081e:	4a05      	ldr	r2, [pc, #20]	@ (8000834 <SystemInit+0x20>)
 8000820:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8000824:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 8000828:	bf00      	nop
 800082a:	46bd      	mov	sp, r7
 800082c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000830:	4770      	bx	lr
 8000832:	bf00      	nop
 8000834:	e000ed00 	.word	0xe000ed00

08000838 <MX_TIM2_Init>:
 8000838:	b580      	push	{r7, lr}
 800083a:	b086      	sub	sp, #24
 800083c:	af00      	add	r7, sp, #0
 800083e:	f107 0308 	add.w	r3, r7, #8
 8000842:	2200      	movs	r2, #0
 8000844:	601a      	str	r2, [r3, #0]
 8000846:	605a      	str	r2, [r3, #4]
 8000848:	609a      	str	r2, [r3, #8]
 800084a:	60da      	str	r2, [r3, #12]
 800084c:	463b      	mov	r3, r7
 800084e:	2200      	movs	r2, #0
 8000850:	601a      	str	r2, [r3, #0]
 8000852:	605a      	str	r2, [r3, #4]
 8000854:	4b1d      	ldr	r3, [pc, #116]	@ (80008cc <MX_TIM2_Init+0x94>)
 8000856:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 800085a:	601a      	str	r2, [r3, #0]
 800085c:	4b1b      	ldr	r3, [pc, #108]	@ (80008cc <MX_TIM2_Init+0x94>)
 800085e:	220f      	movs	r2, #15
 8000860:	605a      	str	r2, [r3, #4]
 8000862:	4b1a      	ldr	r3, [pc, #104]	@ (80008cc <MX_TIM2_Init+0x94>)
 8000864:	2200      	movs	r2, #0
 8000866:	609a      	str	r2, [r3, #8]
 8000868:	4b18      	ldr	r3, [pc, #96]	@ (80008cc <MX_TIM2_Init+0x94>)
 800086a:	f240 32e7 	movw	r2, #999	@ 0x3e7
 800086e:	60da      	str	r2, [r3, #12]
 8000870:	4b16      	ldr	r3, [pc, #88]	@ (80008cc <MX_TIM2_Init+0x94>)
 8000872:	2200      	movs	r2, #0
 8000874:	611a      	str	r2, [r3, #16]
 8000876:	4b15      	ldr	r3, [pc, #84]	@ (80008cc <MX_TIM2_Init+0x94>)
 8000878:	2200      	movs	r2, #0
 800087a:	619a      	str	r2, [r3, #24]
 800087c:	4813      	ldr	r0, [pc, #76]	@ (80008cc <MX_TIM2_Init+0x94>)
 800087e:	f001 f975 	bl	8001b6c <HAL_TIM_Base_Init>
 8000882:	4603      	mov	r3, r0
 8000884:	2b00      	cmp	r3, #0
 8000886:	d001      	beq.n	800088c <MX_TIM2_Init+0x54>
 8000888:	f7ff ff5c 	bl	8000744 <Error_Handler>
 800088c:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8000890:	60bb      	str	r3, [r7, #8]
 8000892:	f107 0308 	add.w	r3, r7, #8
 8000896:	4619      	mov	r1, r3
 8000898:	480c      	ldr	r0, [pc, #48]	@ (80008cc <MX_TIM2_Init+0x94>)
 800089a:	f001 fb09 	bl	8001eb0 <HAL_TIM_ConfigClockSource>
 800089e:	4603      	mov	r3, r0
 80008a0:	2b00      	cmp	r3, #0
 80008a2:	d001      	beq.n	80008a8 <MX_TIM2_Init+0x70>
 80008a4:	f7ff ff4e 	bl	8000744 <Error_Handler>
 80008a8:	2300      	movs	r3, #0
 80008aa:	603b      	str	r3, [r7, #0]
 80008ac:	2300      	movs	r3, #0
 80008ae:	607b      	str	r3, [r7, #4]
 80008b0:	463b      	mov	r3, r7
 80008b2:	4619      	mov	r1, r3
 80008b4:	4805      	ldr	r0, [pc, #20]	@ (80008cc <MX_TIM2_Init+0x94>)
 80008b6:	f001 fd0b 	bl	80022d0 <HAL_TIMEx_MasterConfigSynchronization>
 80008ba:	4603      	mov	r3, r0
 80008bc:	2b00      	cmp	r3, #0
 80008be:	d001      	beq.n	80008c4 <MX_TIM2_Init+0x8c>
 80008c0:	f7ff ff40 	bl	8000744 <Error_Handler>
 80008c4:	bf00      	nop
 80008c6:	3718      	adds	r7, #24
 80008c8:	46bd      	mov	sp, r7
 80008ca:	bd80      	pop	{r7, pc}
 80008cc:	20000088 	.word	0x20000088

080008d0 <HAL_TIM_Base_MspInit>:
 80008d0:	b580      	push	{r7, lr}
 80008d2:	b084      	sub	sp, #16
 80008d4:	af00      	add	r7, sp, #0
 80008d6:	6078      	str	r0, [r7, #4]
 80008d8:	687b      	ldr	r3, [r7, #4]
 80008da:	681b      	ldr	r3, [r3, #0]
 80008dc:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80008e0:	d115      	bne.n	800090e <HAL_TIM_Base_MspInit+0x3e>
 80008e2:	2300      	movs	r3, #0
 80008e4:	60fb      	str	r3, [r7, #12]
 80008e6:	4b0c      	ldr	r3, [pc, #48]	@ (8000918 <HAL_TIM_Base_MspInit+0x48>)
 80008e8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80008ea:	4a0b      	ldr	r2, [pc, #44]	@ (8000918 <HAL_TIM_Base_MspInit+0x48>)
 80008ec:	f043 0301 	orr.w	r3, r3, #1
 80008f0:	6413      	str	r3, [r2, #64]	@ 0x40
 80008f2:	4b09      	ldr	r3, [pc, #36]	@ (8000918 <HAL_TIM_Base_MspInit+0x48>)
 80008f4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80008f6:	f003 0301 	and.w	r3, r3, #1
 80008fa:	60fb      	str	r3, [r7, #12]
 80008fc:	68fb      	ldr	r3, [r7, #12]
 80008fe:	2200      	movs	r2, #0
 8000900:	2100      	movs	r1, #0
 8000902:	201c      	movs	r0, #28
 8000904:	f000 faf9 	bl	8000efa <HAL_NVIC_SetPriority>
 8000908:	201c      	movs	r0, #28
 800090a:	f000 fb12 	bl	8000f32 <HAL_NVIC_EnableIRQ>
 800090e:	bf00      	nop
 8000910:	3710      	adds	r7, #16
 8000912:	46bd      	mov	sp, r7
 8000914:	bd80      	pop	{r7, pc}
 8000916:	bf00      	nop
 8000918:	40023800 	.word	0x40023800

0800091c <Reset_Handler>:
 800091c:	f8df d034 	ldr.w	sp, [pc, #52]	@ 8000954 <LoopFillZerobss+0xe>
 8000920:	f7ff ff78 	bl	8000814 <SystemInit>
 8000924:	480c      	ldr	r0, [pc, #48]	@ (8000958 <LoopFillZerobss+0x12>)
 8000926:	490d      	ldr	r1, [pc, #52]	@ (800095c <LoopFillZerobss+0x16>)
 8000928:	4a0d      	ldr	r2, [pc, #52]	@ (8000960 <LoopFillZerobss+0x1a>)
 800092a:	2300      	movs	r3, #0
 800092c:	e002      	b.n	8000934 <LoopCopyDataInit>

0800092e <CopyDataInit>:
 800092e:	58d4      	ldr	r4, [r2, r3]
 8000930:	50c4      	str	r4, [r0, r3]
 8000932:	3304      	adds	r3, #4

08000934 <LoopCopyDataInit>:
 8000934:	18c4      	adds	r4, r0, r3
 8000936:	428c      	cmp	r4, r1
 8000938:	d3f9      	bcc.n	800092e <CopyDataInit>
 800093a:	4a0a      	ldr	r2, [pc, #40]	@ (8000964 <LoopFillZerobss+0x1e>)
 800093c:	4c0a      	ldr	r4, [pc, #40]	@ (8000968 <LoopFillZerobss+0x22>)
 800093e:	2300      	movs	r3, #0
 8000940:	e001      	b.n	8000946 <LoopFillZerobss>

08000942 <FillZerobss>:
 8000942:	6013      	str	r3, [r2, #0]
 8000944:	3204      	adds	r2, #4

08000946 <LoopFillZerobss>:
 8000946:	42a2      	cmp	r2, r4
 8000948:	d3fb      	bcc.n	8000942 <FillZerobss>
 800094a:	f001 fd4b 	bl	80023e4 <__libc_init_array>
 800094e:	f7ff fe81 	bl	8000654 <main>
 8000952:	4770      	bx	lr
 8000954:	20020000 	.word	0x20020000
 8000958:	20000000 	.word	0x20000000
 800095c:	2000006c 	.word	0x2000006c
 8000960:	08002470 	.word	0x08002470
 8000964:	2000006c 	.word	0x2000006c
 8000968:	20000100 	.word	0x20000100

0800096c <ADC_IRQHandler>:
 800096c:	e7fe      	b.n	800096c <ADC_IRQHandler>

0800096e <HAL_TIM_PeriodElapsedCallback>:
 800096e:	b580      	push	{r7, lr}
 8000970:	b082      	sub	sp, #8
 8000972:	af00      	add	r7, sp, #0
 8000974:	6078      	str	r0, [r7, #4]
 8000976:	687b      	ldr	r3, [r7, #4]
 8000978:	681b      	ldr	r3, [r3, #0]
 800097a:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 800097e:	d101      	bne.n	8000984 <HAL_TIM_PeriodElapsedCallback+0x16>
 8000980:	f000 f856 	bl	8000a30 <FND_DisplayData>
 8000984:	bf00      	nop
 8000986:	3708      	adds	r7, #8
 8000988:	46bd      	mov	sp, r7
 800098a:	bd80      	pop	{r7, pc}

0800098c <ap_main>:
 800098c:	b580      	push	{r7, lr}
 800098e:	af00      	add	r7, sp, #0
 8000990:	f240 40d2 	movw	r0, #1234	@ 0x4d2
 8000994:	f000 f83c 	bl	8000a10 <FND_WriteData>
 8000998:	4802      	ldr	r0, [pc, #8]	@ (80009a4 <ap_main+0x18>)
 800099a:	f001 f937 	bl	8001c0c <HAL_TIM_Base_Start_IT>
 800099e:	bf00      	nop
 80009a0:	e7fd      	b.n	800099e <ap_main+0x12>
 80009a2:	bf00      	nop
 80009a4:	20000088 	.word	0x20000088

080009a8 <ap_Init>:
 80009a8:	b580      	push	{r7, lr}
 80009aa:	af00      	add	r7, sp, #0
 80009ac:	2220      	movs	r2, #32
 80009ae:	4908      	ldr	r1, [pc, #32]	@ (80009d0 <ap_Init+0x28>)
 80009b0:	4808      	ldr	r0, [pc, #32]	@ (80009d4 <ap_Init+0x2c>)
 80009b2:	f000 f817 	bl	80009e4 <Button_Init>
 80009b6:	2208      	movs	r2, #8
 80009b8:	4905      	ldr	r1, [pc, #20]	@ (80009d0 <ap_Init+0x28>)
 80009ba:	4807      	ldr	r0, [pc, #28]	@ (80009d8 <ap_Init+0x30>)
 80009bc:	f000 f812 	bl	80009e4 <Button_Init>
 80009c0:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 80009c4:	4905      	ldr	r1, [pc, #20]	@ (80009dc <ap_Init+0x34>)
 80009c6:	4806      	ldr	r0, [pc, #24]	@ (80009e0 <ap_Init+0x38>)
 80009c8:	f000 f80c 	bl	80009e4 <Button_Init>
 80009cc:	bf00      	nop
 80009ce:	bd80      	pop	{r7, pc}
 80009d0:	40020400 	.word	0x40020400
 80009d4:	200000d0 	.word	0x200000d0
 80009d8:	200000dc 	.word	0x200000dc
 80009dc:	40020000 	.word	0x40020000
 80009e0:	200000e8 	.word	0x200000e8

080009e4 <Button_Init>:
 80009e4:	b480      	push	{r7}
 80009e6:	b085      	sub	sp, #20
 80009e8:	af00      	add	r7, sp, #0
 80009ea:	60f8      	str	r0, [r7, #12]
 80009ec:	60b9      	str	r1, [r7, #8]
 80009ee:	4613      	mov	r3, r2
 80009f0:	80fb      	strh	r3, [r7, #6]
 80009f2:	68fb      	ldr	r3, [r7, #12]
 80009f4:	68ba      	ldr	r2, [r7, #8]
 80009f6:	601a      	str	r2, [r3, #0]
 80009f8:	68fb      	ldr	r3, [r7, #12]
 80009fa:	88fa      	ldrh	r2, [r7, #6]
 80009fc:	809a      	strh	r2, [r3, #4]
 80009fe:	68fb      	ldr	r3, [r7, #12]
 8000a00:	2201      	movs	r2, #1
 8000a02:	609a      	str	r2, [r3, #8]
 8000a04:	bf00      	nop
 8000a06:	3714      	adds	r7, #20
 8000a08:	46bd      	mov	sp, r7
 8000a0a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a0e:	4770      	bx	lr

08000a10 <FND_WriteData>:
 8000a10:	b480      	push	{r7}
 8000a12:	b083      	sub	sp, #12
 8000a14:	af00      	add	r7, sp, #0
 8000a16:	4603      	mov	r3, r0
 8000a18:	80fb      	strh	r3, [r7, #6]
 8000a1a:	4a04      	ldr	r2, [pc, #16]	@ (8000a2c <FND_WriteData+0x1c>)
 8000a1c:	88fb      	ldrh	r3, [r7, #6]
 8000a1e:	8013      	strh	r3, [r2, #0]
 8000a20:	bf00      	nop
 8000a22:	370c      	adds	r7, #12
 8000a24:	46bd      	mov	sp, r7
 8000a26:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a2a:	4770      	bx	lr
 8000a2c:	200000f4 	.word	0x200000f4

08000a30 <FND_DisplayData>:
 8000a30:	b580      	push	{r7, lr}
 8000a32:	af00      	add	r7, sp, #0
 8000a34:	4b44      	ldr	r3, [pc, #272]	@ (8000b48 <FND_DisplayData+0x118>)
 8000a36:	681b      	ldr	r3, [r3, #0]
 8000a38:	3301      	adds	r3, #1
 8000a3a:	425a      	negs	r2, r3
 8000a3c:	f003 0303 	and.w	r3, r3, #3
 8000a40:	f002 0203 	and.w	r2, r2, #3
 8000a44:	bf58      	it	pl
 8000a46:	4253      	negpl	r3, r2
 8000a48:	4a3f      	ldr	r2, [pc, #252]	@ (8000b48 <FND_DisplayData+0x118>)
 8000a4a:	6013      	str	r3, [r2, #0]
 8000a4c:	4b3e      	ldr	r3, [pc, #248]	@ (8000b48 <FND_DisplayData+0x118>)
 8000a4e:	681b      	ldr	r3, [r3, #0]
 8000a50:	2b03      	cmp	r3, #3
 8000a52:	d876      	bhi.n	8000b42 <FND_DisplayData+0x112>
 8000a54:	a201      	add	r2, pc, #4	@ (adr r2, 8000a5c <FND_DisplayData+0x2c>)
 8000a56:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000a5a:	bf00      	nop
 8000a5c:	08000a6d 	.word	0x08000a6d
 8000a60:	08000a9b 	.word	0x08000a9b
 8000a64:	08000ad3 	.word	0x08000ad3
 8000a68:	08000b0b 	.word	0x08000b0b
 8000a6c:	f000 f88e 	bl	8000b8c <FND_DispOffALL>
 8000a70:	4b36      	ldr	r3, [pc, #216]	@ (8000b4c <FND_DisplayData+0x11c>)
 8000a72:	881a      	ldrh	r2, [r3, #0]
 8000a74:	4b36      	ldr	r3, [pc, #216]	@ (8000b50 <FND_DisplayData+0x120>)
 8000a76:	fba3 1302 	umull	r1, r3, r3, r2
 8000a7a:	08d9      	lsrs	r1, r3, #3
 8000a7c:	460b      	mov	r3, r1
 8000a7e:	009b      	lsls	r3, r3, #2
 8000a80:	440b      	add	r3, r1
 8000a82:	005b      	lsls	r3, r3, #1
 8000a84:	1ad3      	subs	r3, r2, r3
 8000a86:	b29b      	uxth	r3, r3
 8000a88:	4618      	mov	r0, r3
 8000a8a:	f000 f8a1 	bl	8000bd0 <FND_DispDigit>
 8000a8e:	4b2e      	ldr	r3, [pc, #184]	@ (8000b48 <FND_DisplayData+0x118>)
 8000a90:	681b      	ldr	r3, [r3, #0]
 8000a92:	4618      	mov	r0, r3
 8000a94:	f000 f862 	bl	8000b5c <FND_DispOn>
 8000a98:	e053      	b.n	8000b42 <FND_DisplayData+0x112>
 8000a9a:	f000 f877 	bl	8000b8c <FND_DispOffALL>
 8000a9e:	4b2b      	ldr	r3, [pc, #172]	@ (8000b4c <FND_DisplayData+0x11c>)
 8000aa0:	881b      	ldrh	r3, [r3, #0]
 8000aa2:	4a2b      	ldr	r2, [pc, #172]	@ (8000b50 <FND_DisplayData+0x120>)
 8000aa4:	fba2 2303 	umull	r2, r3, r2, r3
 8000aa8:	08db      	lsrs	r3, r3, #3
 8000aaa:	b29a      	uxth	r2, r3
 8000aac:	4b28      	ldr	r3, [pc, #160]	@ (8000b50 <FND_DisplayData+0x120>)
 8000aae:	fba3 1302 	umull	r1, r3, r3, r2
 8000ab2:	08d9      	lsrs	r1, r3, #3
 8000ab4:	460b      	mov	r3, r1
 8000ab6:	009b      	lsls	r3, r3, #2
 8000ab8:	440b      	add	r3, r1
 8000aba:	005b      	lsls	r3, r3, #1
 8000abc:	1ad3      	subs	r3, r2, r3
 8000abe:	b29b      	uxth	r3, r3
 8000ac0:	4618      	mov	r0, r3
 8000ac2:	f000 f885 	bl	8000bd0 <FND_DispDigit>
 8000ac6:	4b20      	ldr	r3, [pc, #128]	@ (8000b48 <FND_DisplayData+0x118>)
 8000ac8:	681b      	ldr	r3, [r3, #0]
 8000aca:	4618      	mov	r0, r3
 8000acc:	f000 f846 	bl	8000b5c <FND_DispOn>
 8000ad0:	e037      	b.n	8000b42 <FND_DisplayData+0x112>
 8000ad2:	f000 f85b 	bl	8000b8c <FND_DispOffALL>
 8000ad6:	4b1d      	ldr	r3, [pc, #116]	@ (8000b4c <FND_DisplayData+0x11c>)
 8000ad8:	881b      	ldrh	r3, [r3, #0]
 8000ada:	4a1e      	ldr	r2, [pc, #120]	@ (8000b54 <FND_DisplayData+0x124>)
 8000adc:	fba2 2303 	umull	r2, r3, r2, r3
 8000ae0:	095b      	lsrs	r3, r3, #5
 8000ae2:	b29a      	uxth	r2, r3
 8000ae4:	4b1a      	ldr	r3, [pc, #104]	@ (8000b50 <FND_DisplayData+0x120>)
 8000ae6:	fba3 1302 	umull	r1, r3, r3, r2
 8000aea:	08d9      	lsrs	r1, r3, #3
 8000aec:	460b      	mov	r3, r1
 8000aee:	009b      	lsls	r3, r3, #2
 8000af0:	440b      	add	r3, r1
 8000af2:	005b      	lsls	r3, r3, #1
 8000af4:	1ad3      	subs	r3, r2, r3
 8000af6:	b29b      	uxth	r3, r3
 8000af8:	4618      	mov	r0, r3
 8000afa:	f000 f869 	bl	8000bd0 <FND_DispDigit>
 8000afe:	4b12      	ldr	r3, [pc, #72]	@ (8000b48 <FND_DisplayData+0x118>)
 8000b00:	681b      	ldr	r3, [r3, #0]
 8000b02:	4618      	mov	r0, r3
 8000b04:	f000 f82a 	bl	8000b5c <FND_DispOn>
 8000b08:	e01b      	b.n	8000b42 <FND_DisplayData+0x112>
 8000b0a:	f000 f83f 	bl	8000b8c <FND_DispOffALL>
 8000b0e:	4b0f      	ldr	r3, [pc, #60]	@ (8000b4c <FND_DisplayData+0x11c>)
 8000b10:	881b      	ldrh	r3, [r3, #0]
 8000b12:	4a11      	ldr	r2, [pc, #68]	@ (8000b58 <FND_DisplayData+0x128>)
 8000b14:	fba2 2303 	umull	r2, r3, r2, r3
 8000b18:	099b      	lsrs	r3, r3, #6
 8000b1a:	b29a      	uxth	r2, r3
 8000b1c:	4b0c      	ldr	r3, [pc, #48]	@ (8000b50 <FND_DisplayData+0x120>)
 8000b1e:	fba3 1302 	umull	r1, r3, r3, r2
 8000b22:	08d9      	lsrs	r1, r3, #3
 8000b24:	460b      	mov	r3, r1
 8000b26:	009b      	lsls	r3, r3, #2
 8000b28:	440b      	add	r3, r1
 8000b2a:	005b      	lsls	r3, r3, #1
 8000b2c:	1ad3      	subs	r3, r2, r3
 8000b2e:	b29b      	uxth	r3, r3
 8000b30:	4618      	mov	r0, r3
 8000b32:	f000 f84d 	bl	8000bd0 <FND_DispDigit>
 8000b36:	4b04      	ldr	r3, [pc, #16]	@ (8000b48 <FND_DisplayData+0x118>)
 8000b38:	681b      	ldr	r3, [r3, #0]
 8000b3a:	4618      	mov	r0, r3
 8000b3c:	f000 f80e 	bl	8000b5c <FND_DispOn>
 8000b40:	bf00      	nop
 8000b42:	bf00      	nop
 8000b44:	bd80      	pop	{r7, pc}
 8000b46:	bf00      	nop
 8000b48:	200000f8 	.word	0x200000f8
 8000b4c:	200000f4 	.word	0x200000f4
 8000b50:	cccccccd 	.word	0xcccccccd
 8000b54:	51eb851f 	.word	0x51eb851f
 8000b58:	10624dd3 	.word	0x10624dd3

08000b5c <FND_DispOn>:
 8000b5c:	b580      	push	{r7, lr}
 8000b5e:	b082      	sub	sp, #8
 8000b60:	af00      	add	r7, sp, #0
 8000b62:	6078      	str	r0, [r7, #4]
 8000b64:	4a08      	ldr	r2, [pc, #32]	@ (8000b88 <FND_DispOn+0x2c>)
 8000b66:	687b      	ldr	r3, [r7, #4]
 8000b68:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8000b6c:	4a06      	ldr	r2, [pc, #24]	@ (8000b88 <FND_DispOn+0x2c>)
 8000b6e:	687b      	ldr	r3, [r7, #4]
 8000b70:	00db      	lsls	r3, r3, #3
 8000b72:	4413      	add	r3, r2
 8000b74:	685b      	ldr	r3, [r3, #4]
 8000b76:	b29b      	uxth	r3, r3
 8000b78:	2201      	movs	r2, #1
 8000b7a:	4619      	mov	r1, r3
 8000b7c:	f000 fb78 	bl	8001270 <HAL_GPIO_WritePin>
 8000b80:	bf00      	nop
 8000b82:	3708      	adds	r7, #8
 8000b84:	46bd      	mov	sp, r7
 8000b86:	bd80      	pop	{r7, pc}
 8000b88:	20000004 	.word	0x20000004

08000b8c <FND_DispOffALL>:
 8000b8c:	b580      	push	{r7, lr}
 8000b8e:	b082      	sub	sp, #8
 8000b90:	af00      	add	r7, sp, #0
 8000b92:	2300      	movs	r3, #0
 8000b94:	607b      	str	r3, [r7, #4]
 8000b96:	e010      	b.n	8000bba <FND_DispOffALL+0x2e>
 8000b98:	4a0c      	ldr	r2, [pc, #48]	@ (8000bcc <FND_DispOffALL+0x40>)
 8000b9a:	687b      	ldr	r3, [r7, #4]
 8000b9c:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8000ba0:	4a0a      	ldr	r2, [pc, #40]	@ (8000bcc <FND_DispOffALL+0x40>)
 8000ba2:	687b      	ldr	r3, [r7, #4]
 8000ba4:	00db      	lsls	r3, r3, #3
 8000ba6:	4413      	add	r3, r2
 8000ba8:	685b      	ldr	r3, [r3, #4]
 8000baa:	b29b      	uxth	r3, r3
 8000bac:	2200      	movs	r2, #0
 8000bae:	4619      	mov	r1, r3
 8000bb0:	f000 fb5e 	bl	8001270 <HAL_GPIO_WritePin>
 8000bb4:	687b      	ldr	r3, [r7, #4]
 8000bb6:	3301      	adds	r3, #1
 8000bb8:	607b      	str	r3, [r7, #4]
 8000bba:	687b      	ldr	r3, [r7, #4]
 8000bbc:	2b03      	cmp	r3, #3
 8000bbe:	ddeb      	ble.n	8000b98 <FND_DispOffALL+0xc>
 8000bc0:	bf00      	nop
 8000bc2:	bf00      	nop
 8000bc4:	3708      	adds	r7, #8
 8000bc6:	46bd      	mov	sp, r7
 8000bc8:	bd80      	pop	{r7, pc}
 8000bca:	bf00      	nop
 8000bcc:	20000004 	.word	0x20000004

08000bd0 <FND_DispDigit>:
 8000bd0:	b580      	push	{r7, lr}
 8000bd2:	b086      	sub	sp, #24
 8000bd4:	af00      	add	r7, sp, #0
 8000bd6:	4603      	mov	r3, r0
 8000bd8:	80fb      	strh	r3, [r7, #6]
 8000bda:	4a1f      	ldr	r2, [pc, #124]	@ (8000c58 <FND_DispDigit+0x88>)
 8000bdc:	f107 0308 	add.w	r3, r7, #8
 8000be0:	ca07      	ldmia	r2, {r0, r1, r2}
 8000be2:	c303      	stmia	r3!, {r0, r1}
 8000be4:	801a      	strh	r2, [r3, #0]
 8000be6:	2300      	movs	r3, #0
 8000be8:	617b      	str	r3, [r7, #20]
 8000bea:	e02c      	b.n	8000c46 <FND_DispDigit+0x76>
 8000bec:	88fb      	ldrh	r3, [r7, #6]
 8000bee:	3318      	adds	r3, #24
 8000bf0:	443b      	add	r3, r7
 8000bf2:	f813 3c10 	ldrb.w	r3, [r3, #-16]
 8000bf6:	461a      	mov	r2, r3
 8000bf8:	697b      	ldr	r3, [r7, #20]
 8000bfa:	fa42 f303 	asr.w	r3, r2, r3
 8000bfe:	f003 0301 	and.w	r3, r3, #1
 8000c02:	2b00      	cmp	r3, #0
 8000c04:	d10e      	bne.n	8000c24 <FND_DispDigit+0x54>
 8000c06:	4a15      	ldr	r2, [pc, #84]	@ (8000c5c <FND_DispDigit+0x8c>)
 8000c08:	697b      	ldr	r3, [r7, #20]
 8000c0a:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8000c0e:	4a13      	ldr	r2, [pc, #76]	@ (8000c5c <FND_DispDigit+0x8c>)
 8000c10:	697b      	ldr	r3, [r7, #20]
 8000c12:	00db      	lsls	r3, r3, #3
 8000c14:	4413      	add	r3, r2
 8000c16:	685b      	ldr	r3, [r3, #4]
 8000c18:	b29b      	uxth	r3, r3
 8000c1a:	2201      	movs	r2, #1
 8000c1c:	4619      	mov	r1, r3
 8000c1e:	f000 fb27 	bl	8001270 <HAL_GPIO_WritePin>
 8000c22:	e00d      	b.n	8000c40 <FND_DispDigit+0x70>
 8000c24:	4a0d      	ldr	r2, [pc, #52]	@ (8000c5c <FND_DispDigit+0x8c>)
 8000c26:	697b      	ldr	r3, [r7, #20]
 8000c28:	f852 0033 	ldr.w	r0, [r2, r3, lsl #3]
 8000c2c:	4a0b      	ldr	r2, [pc, #44]	@ (8000c5c <FND_DispDigit+0x8c>)
 8000c2e:	697b      	ldr	r3, [r7, #20]
 8000c30:	00db      	lsls	r3, r3, #3
 8000c32:	4413      	add	r3, r2
 8000c34:	685b      	ldr	r3, [r3, #4]
 8000c36:	b29b      	uxth	r3, r3
 8000c38:	2200      	movs	r2, #0
 8000c3a:	4619      	mov	r1, r3
 8000c3c:	f000 fb18 	bl	8001270 <HAL_GPIO_WritePin>
 8000c40:	697b      	ldr	r3, [r7, #20]
 8000c42:	3301      	adds	r3, #1
 8000c44:	617b      	str	r3, [r7, #20]
 8000c46:	697b      	ldr	r3, [r7, #20]
 8000c48:	2b07      	cmp	r3, #7
 8000c4a:	ddcf      	ble.n	8000bec <FND_DispDigit+0x1c>
 8000c4c:	bf00      	nop
 8000c4e:	bf00      	nop
 8000c50:	3718      	adds	r7, #24
 8000c52:	46bd      	mov	sp, r7
 8000c54:	bd80      	pop	{r7, pc}
 8000c56:	bf00      	nop
 8000c58:	08002444 	.word	0x08002444
 8000c5c:	20000024 	.word	0x20000024

08000c60 <HAL_Init>:
 8000c60:	b580      	push	{r7, lr}
 8000c62:	af00      	add	r7, sp, #0
 8000c64:	4b0e      	ldr	r3, [pc, #56]	@ (8000ca0 <HAL_Init+0x40>)
 8000c66:	681b      	ldr	r3, [r3, #0]
 8000c68:	4a0d      	ldr	r2, [pc, #52]	@ (8000ca0 <HAL_Init+0x40>)
 8000c6a:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 8000c6e:	6013      	str	r3, [r2, #0]
 8000c70:	4b0b      	ldr	r3, [pc, #44]	@ (8000ca0 <HAL_Init+0x40>)
 8000c72:	681b      	ldr	r3, [r3, #0]
 8000c74:	4a0a      	ldr	r2, [pc, #40]	@ (8000ca0 <HAL_Init+0x40>)
 8000c76:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 8000c7a:	6013      	str	r3, [r2, #0]
 8000c7c:	4b08      	ldr	r3, [pc, #32]	@ (8000ca0 <HAL_Init+0x40>)
 8000c7e:	681b      	ldr	r3, [r3, #0]
 8000c80:	4a07      	ldr	r2, [pc, #28]	@ (8000ca0 <HAL_Init+0x40>)
 8000c82:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8000c86:	6013      	str	r3, [r2, #0]
 8000c88:	2003      	movs	r0, #3
 8000c8a:	f000 f92b 	bl	8000ee4 <HAL_NVIC_SetPriorityGrouping>
 8000c8e:	200f      	movs	r0, #15
 8000c90:	f000 f808 	bl	8000ca4 <HAL_InitTick>
 8000c94:	f7ff fd5c 	bl	8000750 <HAL_MspInit>
 8000c98:	2300      	movs	r3, #0
 8000c9a:	4618      	mov	r0, r3
 8000c9c:	bd80      	pop	{r7, pc}
 8000c9e:	bf00      	nop
 8000ca0:	40023c00 	.word	0x40023c00

08000ca4 <HAL_InitTick>:
 8000ca4:	b580      	push	{r7, lr}
 8000ca6:	b082      	sub	sp, #8
 8000ca8:	af00      	add	r7, sp, #0
 8000caa:	6078      	str	r0, [r7, #4]
 8000cac:	4b12      	ldr	r3, [pc, #72]	@ (8000cf8 <HAL_InitTick+0x54>)
 8000cae:	681a      	ldr	r2, [r3, #0]
 8000cb0:	4b12      	ldr	r3, [pc, #72]	@ (8000cfc <HAL_InitTick+0x58>)
 8000cb2:	781b      	ldrb	r3, [r3, #0]
 8000cb4:	4619      	mov	r1, r3
 8000cb6:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 8000cba:	fbb3 f3f1 	udiv	r3, r3, r1
 8000cbe:	fbb2 f3f3 	udiv	r3, r2, r3
 8000cc2:	4618      	mov	r0, r3
 8000cc4:	f000 f943 	bl	8000f4e <HAL_SYSTICK_Config>
 8000cc8:	4603      	mov	r3, r0
 8000cca:	2b00      	cmp	r3, #0
 8000ccc:	d001      	beq.n	8000cd2 <HAL_InitTick+0x2e>
 8000cce:	2301      	movs	r3, #1
 8000cd0:	e00e      	b.n	8000cf0 <HAL_InitTick+0x4c>
 8000cd2:	687b      	ldr	r3, [r7, #4]
 8000cd4:	2b0f      	cmp	r3, #15
 8000cd6:	d80a      	bhi.n	8000cee <HAL_InitTick+0x4a>
 8000cd8:	2200      	movs	r2, #0
 8000cda:	6879      	ldr	r1, [r7, #4]
 8000cdc:	f04f 30ff 	mov.w	r0, #4294967295
 8000ce0:	f000 f90b 	bl	8000efa <HAL_NVIC_SetPriority>
 8000ce4:	4a06      	ldr	r2, [pc, #24]	@ (8000d00 <HAL_InitTick+0x5c>)
 8000ce6:	687b      	ldr	r3, [r7, #4]
 8000ce8:	6013      	str	r3, [r2, #0]
 8000cea:	2300      	movs	r3, #0
 8000cec:	e000      	b.n	8000cf0 <HAL_InitTick+0x4c>
 8000cee:	2301      	movs	r3, #1
 8000cf0:	4618      	mov	r0, r3
 8000cf2:	3708      	adds	r7, #8
 8000cf4:	46bd      	mov	sp, r7
 8000cf6:	bd80      	pop	{r7, pc}
 8000cf8:	20000000 	.word	0x20000000
 8000cfc:	20000068 	.word	0x20000068
 8000d00:	20000064 	.word	0x20000064

08000d04 <HAL_IncTick>:
 8000d04:	b480      	push	{r7}
 8000d06:	af00      	add	r7, sp, #0
 8000d08:	4b06      	ldr	r3, [pc, #24]	@ (8000d24 <HAL_IncTick+0x20>)
 8000d0a:	781b      	ldrb	r3, [r3, #0]
 8000d0c:	461a      	mov	r2, r3
 8000d0e:	4b06      	ldr	r3, [pc, #24]	@ (8000d28 <HAL_IncTick+0x24>)
 8000d10:	681b      	ldr	r3, [r3, #0]
 8000d12:	4413      	add	r3, r2
 8000d14:	4a04      	ldr	r2, [pc, #16]	@ (8000d28 <HAL_IncTick+0x24>)
 8000d16:	6013      	str	r3, [r2, #0]
 8000d18:	bf00      	nop
 8000d1a:	46bd      	mov	sp, r7
 8000d1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d20:	4770      	bx	lr
 8000d22:	bf00      	nop
 8000d24:	20000068 	.word	0x20000068
 8000d28:	200000fc 	.word	0x200000fc

08000d2c <HAL_GetTick>:
 8000d2c:	b480      	push	{r7}
 8000d2e:	af00      	add	r7, sp, #0
 8000d30:	4b03      	ldr	r3, [pc, #12]	@ (8000d40 <HAL_GetTick+0x14>)
 8000d32:	681b      	ldr	r3, [r3, #0]
 8000d34:	4618      	mov	r0, r3
 8000d36:	46bd      	mov	sp, r7
 8000d38:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d3c:	4770      	bx	lr
 8000d3e:	bf00      	nop
 8000d40:	200000fc 	.word	0x200000fc

08000d44 <__NVIC_SetPriorityGrouping>:
 8000d44:	b480      	push	{r7}
 8000d46:	b085      	sub	sp, #20
 8000d48:	af00      	add	r7, sp, #0
 8000d4a:	6078      	str	r0, [r7, #4]
 8000d4c:	687b      	ldr	r3, [r7, #4]
 8000d4e:	f003 0307 	and.w	r3, r3, #7
 8000d52:	60fb      	str	r3, [r7, #12]
 8000d54:	4b0c      	ldr	r3, [pc, #48]	@ (8000d88 <__NVIC_SetPriorityGrouping+0x44>)
 8000d56:	68db      	ldr	r3, [r3, #12]
 8000d58:	60bb      	str	r3, [r7, #8]
 8000d5a:	68ba      	ldr	r2, [r7, #8]
 8000d5c:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 8000d60:	4013      	ands	r3, r2
 8000d62:	60bb      	str	r3, [r7, #8]
 8000d64:	68fb      	ldr	r3, [r7, #12]
 8000d66:	021a      	lsls	r2, r3, #8
 8000d68:	68bb      	ldr	r3, [r7, #8]
 8000d6a:	4313      	orrs	r3, r2
 8000d6c:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 8000d70:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8000d74:	60bb      	str	r3, [r7, #8]
 8000d76:	4a04      	ldr	r2, [pc, #16]	@ (8000d88 <__NVIC_SetPriorityGrouping+0x44>)
 8000d78:	68bb      	ldr	r3, [r7, #8]
 8000d7a:	60d3      	str	r3, [r2, #12]
 8000d7c:	bf00      	nop
 8000d7e:	3714      	adds	r7, #20
 8000d80:	46bd      	mov	sp, r7
 8000d82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d86:	4770      	bx	lr
 8000d88:	e000ed00 	.word	0xe000ed00

08000d8c <__NVIC_GetPriorityGrouping>:
 8000d8c:	b480      	push	{r7}
 8000d8e:	af00      	add	r7, sp, #0
 8000d90:	4b04      	ldr	r3, [pc, #16]	@ (8000da4 <__NVIC_GetPriorityGrouping+0x18>)
 8000d92:	68db      	ldr	r3, [r3, #12]
 8000d94:	0a1b      	lsrs	r3, r3, #8
 8000d96:	f003 0307 	and.w	r3, r3, #7
 8000d9a:	4618      	mov	r0, r3
 8000d9c:	46bd      	mov	sp, r7
 8000d9e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000da2:	4770      	bx	lr
 8000da4:	e000ed00 	.word	0xe000ed00

08000da8 <__NVIC_EnableIRQ>:
 8000da8:	b480      	push	{r7}
 8000daa:	b083      	sub	sp, #12
 8000dac:	af00      	add	r7, sp, #0
 8000dae:	4603      	mov	r3, r0
 8000db0:	71fb      	strb	r3, [r7, #7]
 8000db2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000db6:	2b00      	cmp	r3, #0
 8000db8:	db0b      	blt.n	8000dd2 <__NVIC_EnableIRQ+0x2a>
 8000dba:	79fb      	ldrb	r3, [r7, #7]
 8000dbc:	f003 021f 	and.w	r2, r3, #31
 8000dc0:	4907      	ldr	r1, [pc, #28]	@ (8000de0 <__NVIC_EnableIRQ+0x38>)
 8000dc2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000dc6:	095b      	lsrs	r3, r3, #5
 8000dc8:	2001      	movs	r0, #1
 8000dca:	fa00 f202 	lsl.w	r2, r0, r2
 8000dce:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000dd2:	bf00      	nop
 8000dd4:	370c      	adds	r7, #12
 8000dd6:	46bd      	mov	sp, r7
 8000dd8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ddc:	4770      	bx	lr
 8000dde:	bf00      	nop
 8000de0:	e000e100 	.word	0xe000e100

08000de4 <__NVIC_SetPriority>:
 8000de4:	b480      	push	{r7}
 8000de6:	b083      	sub	sp, #12
 8000de8:	af00      	add	r7, sp, #0
 8000dea:	4603      	mov	r3, r0
 8000dec:	6039      	str	r1, [r7, #0]
 8000dee:	71fb      	strb	r3, [r7, #7]
 8000df0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000df4:	2b00      	cmp	r3, #0
 8000df6:	db0a      	blt.n	8000e0e <__NVIC_SetPriority+0x2a>
 8000df8:	683b      	ldr	r3, [r7, #0]
 8000dfa:	b2da      	uxtb	r2, r3
 8000dfc:	490c      	ldr	r1, [pc, #48]	@ (8000e30 <__NVIC_SetPriority+0x4c>)
 8000dfe:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e02:	0112      	lsls	r2, r2, #4
 8000e04:	b2d2      	uxtb	r2, r2
 8000e06:	440b      	add	r3, r1
 8000e08:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 8000e0c:	e00a      	b.n	8000e24 <__NVIC_SetPriority+0x40>
 8000e0e:	683b      	ldr	r3, [r7, #0]
 8000e10:	b2da      	uxtb	r2, r3
 8000e12:	4908      	ldr	r1, [pc, #32]	@ (8000e34 <__NVIC_SetPriority+0x50>)
 8000e14:	79fb      	ldrb	r3, [r7, #7]
 8000e16:	f003 030f 	and.w	r3, r3, #15
 8000e1a:	3b04      	subs	r3, #4
 8000e1c:	0112      	lsls	r2, r2, #4
 8000e1e:	b2d2      	uxtb	r2, r2
 8000e20:	440b      	add	r3, r1
 8000e22:	761a      	strb	r2, [r3, #24]
 8000e24:	bf00      	nop
 8000e26:	370c      	adds	r7, #12
 8000e28:	46bd      	mov	sp, r7
 8000e2a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e2e:	4770      	bx	lr
 8000e30:	e000e100 	.word	0xe000e100
 8000e34:	e000ed00 	.word	0xe000ed00

08000e38 <NVIC_EncodePriority>:
 8000e38:	b480      	push	{r7}
 8000e3a:	b089      	sub	sp, #36	@ 0x24
 8000e3c:	af00      	add	r7, sp, #0
 8000e3e:	60f8      	str	r0, [r7, #12]
 8000e40:	60b9      	str	r1, [r7, #8]
 8000e42:	607a      	str	r2, [r7, #4]
 8000e44:	68fb      	ldr	r3, [r7, #12]
 8000e46:	f003 0307 	and.w	r3, r3, #7
 8000e4a:	61fb      	str	r3, [r7, #28]
 8000e4c:	69fb      	ldr	r3, [r7, #28]
 8000e4e:	f1c3 0307 	rsb	r3, r3, #7
 8000e52:	2b04      	cmp	r3, #4
 8000e54:	bf28      	it	cs
 8000e56:	2304      	movcs	r3, #4
 8000e58:	61bb      	str	r3, [r7, #24]
 8000e5a:	69fb      	ldr	r3, [r7, #28]
 8000e5c:	3304      	adds	r3, #4
 8000e5e:	2b06      	cmp	r3, #6
 8000e60:	d902      	bls.n	8000e68 <NVIC_EncodePriority+0x30>
 8000e62:	69fb      	ldr	r3, [r7, #28]
 8000e64:	3b03      	subs	r3, #3
 8000e66:	e000      	b.n	8000e6a <NVIC_EncodePriority+0x32>
 8000e68:	2300      	movs	r3, #0
 8000e6a:	617b      	str	r3, [r7, #20]
 8000e6c:	f04f 32ff 	mov.w	r2, #4294967295
 8000e70:	69bb      	ldr	r3, [r7, #24]
 8000e72:	fa02 f303 	lsl.w	r3, r2, r3
 8000e76:	43da      	mvns	r2, r3
 8000e78:	68bb      	ldr	r3, [r7, #8]
 8000e7a:	401a      	ands	r2, r3
 8000e7c:	697b      	ldr	r3, [r7, #20]
 8000e7e:	409a      	lsls	r2, r3
 8000e80:	f04f 31ff 	mov.w	r1, #4294967295
 8000e84:	697b      	ldr	r3, [r7, #20]
 8000e86:	fa01 f303 	lsl.w	r3, r1, r3
 8000e8a:	43d9      	mvns	r1, r3
 8000e8c:	687b      	ldr	r3, [r7, #4]
 8000e8e:	400b      	ands	r3, r1
 8000e90:	4313      	orrs	r3, r2
 8000e92:	4618      	mov	r0, r3
 8000e94:	3724      	adds	r7, #36	@ 0x24
 8000e96:	46bd      	mov	sp, r7
 8000e98:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e9c:	4770      	bx	lr
	...

08000ea0 <SysTick_Config>:
 8000ea0:	b580      	push	{r7, lr}
 8000ea2:	b082      	sub	sp, #8
 8000ea4:	af00      	add	r7, sp, #0
 8000ea6:	6078      	str	r0, [r7, #4]
 8000ea8:	687b      	ldr	r3, [r7, #4]
 8000eaa:	3b01      	subs	r3, #1
 8000eac:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8000eb0:	d301      	bcc.n	8000eb6 <SysTick_Config+0x16>
 8000eb2:	2301      	movs	r3, #1
 8000eb4:	e00f      	b.n	8000ed6 <SysTick_Config+0x36>
 8000eb6:	4a0a      	ldr	r2, [pc, #40]	@ (8000ee0 <SysTick_Config+0x40>)
 8000eb8:	687b      	ldr	r3, [r7, #4]
 8000eba:	3b01      	subs	r3, #1
 8000ebc:	6053      	str	r3, [r2, #4]
 8000ebe:	210f      	movs	r1, #15
 8000ec0:	f04f 30ff 	mov.w	r0, #4294967295
 8000ec4:	f7ff ff8e 	bl	8000de4 <__NVIC_SetPriority>
 8000ec8:	4b05      	ldr	r3, [pc, #20]	@ (8000ee0 <SysTick_Config+0x40>)
 8000eca:	2200      	movs	r2, #0
 8000ecc:	609a      	str	r2, [r3, #8]
 8000ece:	4b04      	ldr	r3, [pc, #16]	@ (8000ee0 <SysTick_Config+0x40>)
 8000ed0:	2207      	movs	r2, #7
 8000ed2:	601a      	str	r2, [r3, #0]
 8000ed4:	2300      	movs	r3, #0
 8000ed6:	4618      	mov	r0, r3
 8000ed8:	3708      	adds	r7, #8
 8000eda:	46bd      	mov	sp, r7
 8000edc:	bd80      	pop	{r7, pc}
 8000ede:	bf00      	nop
 8000ee0:	e000e010 	.word	0xe000e010

08000ee4 <HAL_NVIC_SetPriorityGrouping>:
 8000ee4:	b580      	push	{r7, lr}
 8000ee6:	b082      	sub	sp, #8
 8000ee8:	af00      	add	r7, sp, #0
 8000eea:	6078      	str	r0, [r7, #4]
 8000eec:	6878      	ldr	r0, [r7, #4]
 8000eee:	f7ff ff29 	bl	8000d44 <__NVIC_SetPriorityGrouping>
 8000ef2:	bf00      	nop
 8000ef4:	3708      	adds	r7, #8
 8000ef6:	46bd      	mov	sp, r7
 8000ef8:	bd80      	pop	{r7, pc}

08000efa <HAL_NVIC_SetPriority>:
 8000efa:	b580      	push	{r7, lr}
 8000efc:	b086      	sub	sp, #24
 8000efe:	af00      	add	r7, sp, #0
 8000f00:	4603      	mov	r3, r0
 8000f02:	60b9      	str	r1, [r7, #8]
 8000f04:	607a      	str	r2, [r7, #4]
 8000f06:	73fb      	strb	r3, [r7, #15]
 8000f08:	2300      	movs	r3, #0
 8000f0a:	617b      	str	r3, [r7, #20]
 8000f0c:	f7ff ff3e 	bl	8000d8c <__NVIC_GetPriorityGrouping>
 8000f10:	6178      	str	r0, [r7, #20]
 8000f12:	687a      	ldr	r2, [r7, #4]
 8000f14:	68b9      	ldr	r1, [r7, #8]
 8000f16:	6978      	ldr	r0, [r7, #20]
 8000f18:	f7ff ff8e 	bl	8000e38 <NVIC_EncodePriority>
 8000f1c:	4602      	mov	r2, r0
 8000f1e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000f22:	4611      	mov	r1, r2
 8000f24:	4618      	mov	r0, r3
 8000f26:	f7ff ff5d 	bl	8000de4 <__NVIC_SetPriority>
 8000f2a:	bf00      	nop
 8000f2c:	3718      	adds	r7, #24
 8000f2e:	46bd      	mov	sp, r7
 8000f30:	bd80      	pop	{r7, pc}

08000f32 <HAL_NVIC_EnableIRQ>:
 8000f32:	b580      	push	{r7, lr}
 8000f34:	b082      	sub	sp, #8
 8000f36:	af00      	add	r7, sp, #0
 8000f38:	4603      	mov	r3, r0
 8000f3a:	71fb      	strb	r3, [r7, #7]
 8000f3c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000f40:	4618      	mov	r0, r3
 8000f42:	f7ff ff31 	bl	8000da8 <__NVIC_EnableIRQ>
 8000f46:	bf00      	nop
 8000f48:	3708      	adds	r7, #8
 8000f4a:	46bd      	mov	sp, r7
 8000f4c:	bd80      	pop	{r7, pc}

08000f4e <HAL_SYSTICK_Config>:
 8000f4e:	b580      	push	{r7, lr}
 8000f50:	b082      	sub	sp, #8
 8000f52:	af00      	add	r7, sp, #0
 8000f54:	6078      	str	r0, [r7, #4]
 8000f56:	6878      	ldr	r0, [r7, #4]
 8000f58:	f7ff ffa2 	bl	8000ea0 <SysTick_Config>
 8000f5c:	4603      	mov	r3, r0
 8000f5e:	4618      	mov	r0, r3
 8000f60:	3708      	adds	r7, #8
 8000f62:	46bd      	mov	sp, r7
 8000f64:	bd80      	pop	{r7, pc}
	...

08000f68 <HAL_GPIO_Init>:
 8000f68:	b480      	push	{r7}
 8000f6a:	b089      	sub	sp, #36	@ 0x24
 8000f6c:	af00      	add	r7, sp, #0
 8000f6e:	6078      	str	r0, [r7, #4]
 8000f70:	6039      	str	r1, [r7, #0]
 8000f72:	2300      	movs	r3, #0
 8000f74:	617b      	str	r3, [r7, #20]
 8000f76:	2300      	movs	r3, #0
 8000f78:	613b      	str	r3, [r7, #16]
 8000f7a:	2300      	movs	r3, #0
 8000f7c:	61bb      	str	r3, [r7, #24]
 8000f7e:	2300      	movs	r3, #0
 8000f80:	61fb      	str	r3, [r7, #28]
 8000f82:	e159      	b.n	8001238 <HAL_GPIO_Init+0x2d0>
 8000f84:	2201      	movs	r2, #1
 8000f86:	69fb      	ldr	r3, [r7, #28]
 8000f88:	fa02 f303 	lsl.w	r3, r2, r3
 8000f8c:	617b      	str	r3, [r7, #20]
 8000f8e:	683b      	ldr	r3, [r7, #0]
 8000f90:	681b      	ldr	r3, [r3, #0]
 8000f92:	697a      	ldr	r2, [r7, #20]
 8000f94:	4013      	ands	r3, r2
 8000f96:	613b      	str	r3, [r7, #16]
 8000f98:	693a      	ldr	r2, [r7, #16]
 8000f9a:	697b      	ldr	r3, [r7, #20]
 8000f9c:	429a      	cmp	r2, r3
 8000f9e:	f040 8148 	bne.w	8001232 <HAL_GPIO_Init+0x2ca>
 8000fa2:	683b      	ldr	r3, [r7, #0]
 8000fa4:	685b      	ldr	r3, [r3, #4]
 8000fa6:	f003 0303 	and.w	r3, r3, #3
 8000faa:	2b01      	cmp	r3, #1
 8000fac:	d005      	beq.n	8000fba <HAL_GPIO_Init+0x52>
 8000fae:	683b      	ldr	r3, [r7, #0]
 8000fb0:	685b      	ldr	r3, [r3, #4]
 8000fb2:	f003 0303 	and.w	r3, r3, #3
 8000fb6:	2b02      	cmp	r3, #2
 8000fb8:	d130      	bne.n	800101c <HAL_GPIO_Init+0xb4>
 8000fba:	687b      	ldr	r3, [r7, #4]
 8000fbc:	689b      	ldr	r3, [r3, #8]
 8000fbe:	61bb      	str	r3, [r7, #24]
 8000fc0:	69fb      	ldr	r3, [r7, #28]
 8000fc2:	005b      	lsls	r3, r3, #1
 8000fc4:	2203      	movs	r2, #3
 8000fc6:	fa02 f303 	lsl.w	r3, r2, r3
 8000fca:	43db      	mvns	r3, r3
 8000fcc:	69ba      	ldr	r2, [r7, #24]
 8000fce:	4013      	ands	r3, r2
 8000fd0:	61bb      	str	r3, [r7, #24]
 8000fd2:	683b      	ldr	r3, [r7, #0]
 8000fd4:	68da      	ldr	r2, [r3, #12]
 8000fd6:	69fb      	ldr	r3, [r7, #28]
 8000fd8:	005b      	lsls	r3, r3, #1
 8000fda:	fa02 f303 	lsl.w	r3, r2, r3
 8000fde:	69ba      	ldr	r2, [r7, #24]
 8000fe0:	4313      	orrs	r3, r2
 8000fe2:	61bb      	str	r3, [r7, #24]
 8000fe4:	687b      	ldr	r3, [r7, #4]
 8000fe6:	69ba      	ldr	r2, [r7, #24]
 8000fe8:	609a      	str	r2, [r3, #8]
 8000fea:	687b      	ldr	r3, [r7, #4]
 8000fec:	685b      	ldr	r3, [r3, #4]
 8000fee:	61bb      	str	r3, [r7, #24]
 8000ff0:	2201      	movs	r2, #1
 8000ff2:	69fb      	ldr	r3, [r7, #28]
 8000ff4:	fa02 f303 	lsl.w	r3, r2, r3
 8000ff8:	43db      	mvns	r3, r3
 8000ffa:	69ba      	ldr	r2, [r7, #24]
 8000ffc:	4013      	ands	r3, r2
 8000ffe:	61bb      	str	r3, [r7, #24]
 8001000:	683b      	ldr	r3, [r7, #0]
 8001002:	685b      	ldr	r3, [r3, #4]
 8001004:	091b      	lsrs	r3, r3, #4
 8001006:	f003 0201 	and.w	r2, r3, #1
 800100a:	69fb      	ldr	r3, [r7, #28]
 800100c:	fa02 f303 	lsl.w	r3, r2, r3
 8001010:	69ba      	ldr	r2, [r7, #24]
 8001012:	4313      	orrs	r3, r2
 8001014:	61bb      	str	r3, [r7, #24]
 8001016:	687b      	ldr	r3, [r7, #4]
 8001018:	69ba      	ldr	r2, [r7, #24]
 800101a:	605a      	str	r2, [r3, #4]
 800101c:	683b      	ldr	r3, [r7, #0]
 800101e:	685b      	ldr	r3, [r3, #4]
 8001020:	f003 0303 	and.w	r3, r3, #3
 8001024:	2b03      	cmp	r3, #3
 8001026:	d017      	beq.n	8001058 <HAL_GPIO_Init+0xf0>
 8001028:	687b      	ldr	r3, [r7, #4]
 800102a:	68db      	ldr	r3, [r3, #12]
 800102c:	61bb      	str	r3, [r7, #24]
 800102e:	69fb      	ldr	r3, [r7, #28]
 8001030:	005b      	lsls	r3, r3, #1
 8001032:	2203      	movs	r2, #3
 8001034:	fa02 f303 	lsl.w	r3, r2, r3
 8001038:	43db      	mvns	r3, r3
 800103a:	69ba      	ldr	r2, [r7, #24]
 800103c:	4013      	ands	r3, r2
 800103e:	61bb      	str	r3, [r7, #24]
 8001040:	683b      	ldr	r3, [r7, #0]
 8001042:	689a      	ldr	r2, [r3, #8]
 8001044:	69fb      	ldr	r3, [r7, #28]
 8001046:	005b      	lsls	r3, r3, #1
 8001048:	fa02 f303 	lsl.w	r3, r2, r3
 800104c:	69ba      	ldr	r2, [r7, #24]
 800104e:	4313      	orrs	r3, r2
 8001050:	61bb      	str	r3, [r7, #24]
 8001052:	687b      	ldr	r3, [r7, #4]
 8001054:	69ba      	ldr	r2, [r7, #24]
 8001056:	60da      	str	r2, [r3, #12]
 8001058:	683b      	ldr	r3, [r7, #0]
 800105a:	685b      	ldr	r3, [r3, #4]
 800105c:	f003 0303 	and.w	r3, r3, #3
 8001060:	2b02      	cmp	r3, #2
 8001062:	d123      	bne.n	80010ac <HAL_GPIO_Init+0x144>
 8001064:	69fb      	ldr	r3, [r7, #28]
 8001066:	08da      	lsrs	r2, r3, #3
 8001068:	687b      	ldr	r3, [r7, #4]
 800106a:	3208      	adds	r2, #8
 800106c:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001070:	61bb      	str	r3, [r7, #24]
 8001072:	69fb      	ldr	r3, [r7, #28]
 8001074:	f003 0307 	and.w	r3, r3, #7
 8001078:	009b      	lsls	r3, r3, #2
 800107a:	220f      	movs	r2, #15
 800107c:	fa02 f303 	lsl.w	r3, r2, r3
 8001080:	43db      	mvns	r3, r3
 8001082:	69ba      	ldr	r2, [r7, #24]
 8001084:	4013      	ands	r3, r2
 8001086:	61bb      	str	r3, [r7, #24]
 8001088:	683b      	ldr	r3, [r7, #0]
 800108a:	691a      	ldr	r2, [r3, #16]
 800108c:	69fb      	ldr	r3, [r7, #28]
 800108e:	f003 0307 	and.w	r3, r3, #7
 8001092:	009b      	lsls	r3, r3, #2
 8001094:	fa02 f303 	lsl.w	r3, r2, r3
 8001098:	69ba      	ldr	r2, [r7, #24]
 800109a:	4313      	orrs	r3, r2
 800109c:	61bb      	str	r3, [r7, #24]
 800109e:	69fb      	ldr	r3, [r7, #28]
 80010a0:	08da      	lsrs	r2, r3, #3
 80010a2:	687b      	ldr	r3, [r7, #4]
 80010a4:	3208      	adds	r2, #8
 80010a6:	69b9      	ldr	r1, [r7, #24]
 80010a8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80010ac:	687b      	ldr	r3, [r7, #4]
 80010ae:	681b      	ldr	r3, [r3, #0]
 80010b0:	61bb      	str	r3, [r7, #24]
 80010b2:	69fb      	ldr	r3, [r7, #28]
 80010b4:	005b      	lsls	r3, r3, #1
 80010b6:	2203      	movs	r2, #3
 80010b8:	fa02 f303 	lsl.w	r3, r2, r3
 80010bc:	43db      	mvns	r3, r3
 80010be:	69ba      	ldr	r2, [r7, #24]
 80010c0:	4013      	ands	r3, r2
 80010c2:	61bb      	str	r3, [r7, #24]
 80010c4:	683b      	ldr	r3, [r7, #0]
 80010c6:	685b      	ldr	r3, [r3, #4]
 80010c8:	f003 0203 	and.w	r2, r3, #3
 80010cc:	69fb      	ldr	r3, [r7, #28]
 80010ce:	005b      	lsls	r3, r3, #1
 80010d0:	fa02 f303 	lsl.w	r3, r2, r3
 80010d4:	69ba      	ldr	r2, [r7, #24]
 80010d6:	4313      	orrs	r3, r2
 80010d8:	61bb      	str	r3, [r7, #24]
 80010da:	687b      	ldr	r3, [r7, #4]
 80010dc:	69ba      	ldr	r2, [r7, #24]
 80010de:	601a      	str	r2, [r3, #0]
 80010e0:	683b      	ldr	r3, [r7, #0]
 80010e2:	685b      	ldr	r3, [r3, #4]
 80010e4:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 80010e8:	2b00      	cmp	r3, #0
 80010ea:	f000 80a2 	beq.w	8001232 <HAL_GPIO_Init+0x2ca>
 80010ee:	2300      	movs	r3, #0
 80010f0:	60fb      	str	r3, [r7, #12]
 80010f2:	4b57      	ldr	r3, [pc, #348]	@ (8001250 <HAL_GPIO_Init+0x2e8>)
 80010f4:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80010f6:	4a56      	ldr	r2, [pc, #344]	@ (8001250 <HAL_GPIO_Init+0x2e8>)
 80010f8:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 80010fc:	6453      	str	r3, [r2, #68]	@ 0x44
 80010fe:	4b54      	ldr	r3, [pc, #336]	@ (8001250 <HAL_GPIO_Init+0x2e8>)
 8001100:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001102:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8001106:	60fb      	str	r3, [r7, #12]
 8001108:	68fb      	ldr	r3, [r7, #12]
 800110a:	4a52      	ldr	r2, [pc, #328]	@ (8001254 <HAL_GPIO_Init+0x2ec>)
 800110c:	69fb      	ldr	r3, [r7, #28]
 800110e:	089b      	lsrs	r3, r3, #2
 8001110:	3302      	adds	r3, #2
 8001112:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001116:	61bb      	str	r3, [r7, #24]
 8001118:	69fb      	ldr	r3, [r7, #28]
 800111a:	f003 0303 	and.w	r3, r3, #3
 800111e:	009b      	lsls	r3, r3, #2
 8001120:	220f      	movs	r2, #15
 8001122:	fa02 f303 	lsl.w	r3, r2, r3
 8001126:	43db      	mvns	r3, r3
 8001128:	69ba      	ldr	r2, [r7, #24]
 800112a:	4013      	ands	r3, r2
 800112c:	61bb      	str	r3, [r7, #24]
 800112e:	687b      	ldr	r3, [r7, #4]
 8001130:	4a49      	ldr	r2, [pc, #292]	@ (8001258 <HAL_GPIO_Init+0x2f0>)
 8001132:	4293      	cmp	r3, r2
 8001134:	d019      	beq.n	800116a <HAL_GPIO_Init+0x202>
 8001136:	687b      	ldr	r3, [r7, #4]
 8001138:	4a48      	ldr	r2, [pc, #288]	@ (800125c <HAL_GPIO_Init+0x2f4>)
 800113a:	4293      	cmp	r3, r2
 800113c:	d013      	beq.n	8001166 <HAL_GPIO_Init+0x1fe>
 800113e:	687b      	ldr	r3, [r7, #4]
 8001140:	4a47      	ldr	r2, [pc, #284]	@ (8001260 <HAL_GPIO_Init+0x2f8>)
 8001142:	4293      	cmp	r3, r2
 8001144:	d00d      	beq.n	8001162 <HAL_GPIO_Init+0x1fa>
 8001146:	687b      	ldr	r3, [r7, #4]
 8001148:	4a46      	ldr	r2, [pc, #280]	@ (8001264 <HAL_GPIO_Init+0x2fc>)
 800114a:	4293      	cmp	r3, r2
 800114c:	d007      	beq.n	800115e <HAL_GPIO_Init+0x1f6>
 800114e:	687b      	ldr	r3, [r7, #4]
 8001150:	4a45      	ldr	r2, [pc, #276]	@ (8001268 <HAL_GPIO_Init+0x300>)
 8001152:	4293      	cmp	r3, r2
 8001154:	d101      	bne.n	800115a <HAL_GPIO_Init+0x1f2>
 8001156:	2304      	movs	r3, #4
 8001158:	e008      	b.n	800116c <HAL_GPIO_Init+0x204>
 800115a:	2307      	movs	r3, #7
 800115c:	e006      	b.n	800116c <HAL_GPIO_Init+0x204>
 800115e:	2303      	movs	r3, #3
 8001160:	e004      	b.n	800116c <HAL_GPIO_Init+0x204>
 8001162:	2302      	movs	r3, #2
 8001164:	e002      	b.n	800116c <HAL_GPIO_Init+0x204>
 8001166:	2301      	movs	r3, #1
 8001168:	e000      	b.n	800116c <HAL_GPIO_Init+0x204>
 800116a:	2300      	movs	r3, #0
 800116c:	69fa      	ldr	r2, [r7, #28]
 800116e:	f002 0203 	and.w	r2, r2, #3
 8001172:	0092      	lsls	r2, r2, #2
 8001174:	4093      	lsls	r3, r2
 8001176:	69ba      	ldr	r2, [r7, #24]
 8001178:	4313      	orrs	r3, r2
 800117a:	61bb      	str	r3, [r7, #24]
 800117c:	4935      	ldr	r1, [pc, #212]	@ (8001254 <HAL_GPIO_Init+0x2ec>)
 800117e:	69fb      	ldr	r3, [r7, #28]
 8001180:	089b      	lsrs	r3, r3, #2
 8001182:	3302      	adds	r3, #2
 8001184:	69ba      	ldr	r2, [r7, #24]
 8001186:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800118a:	4b38      	ldr	r3, [pc, #224]	@ (800126c <HAL_GPIO_Init+0x304>)
 800118c:	689b      	ldr	r3, [r3, #8]
 800118e:	61bb      	str	r3, [r7, #24]
 8001190:	693b      	ldr	r3, [r7, #16]
 8001192:	43db      	mvns	r3, r3
 8001194:	69ba      	ldr	r2, [r7, #24]
 8001196:	4013      	ands	r3, r2
 8001198:	61bb      	str	r3, [r7, #24]
 800119a:	683b      	ldr	r3, [r7, #0]
 800119c:	685b      	ldr	r3, [r3, #4]
 800119e:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 80011a2:	2b00      	cmp	r3, #0
 80011a4:	d003      	beq.n	80011ae <HAL_GPIO_Init+0x246>
 80011a6:	69ba      	ldr	r2, [r7, #24]
 80011a8:	693b      	ldr	r3, [r7, #16]
 80011aa:	4313      	orrs	r3, r2
 80011ac:	61bb      	str	r3, [r7, #24]
 80011ae:	4a2f      	ldr	r2, [pc, #188]	@ (800126c <HAL_GPIO_Init+0x304>)
 80011b0:	69bb      	ldr	r3, [r7, #24]
 80011b2:	6093      	str	r3, [r2, #8]
 80011b4:	4b2d      	ldr	r3, [pc, #180]	@ (800126c <HAL_GPIO_Init+0x304>)
 80011b6:	68db      	ldr	r3, [r3, #12]
 80011b8:	61bb      	str	r3, [r7, #24]
 80011ba:	693b      	ldr	r3, [r7, #16]
 80011bc:	43db      	mvns	r3, r3
 80011be:	69ba      	ldr	r2, [r7, #24]
 80011c0:	4013      	ands	r3, r2
 80011c2:	61bb      	str	r3, [r7, #24]
 80011c4:	683b      	ldr	r3, [r7, #0]
 80011c6:	685b      	ldr	r3, [r3, #4]
 80011c8:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80011cc:	2b00      	cmp	r3, #0
 80011ce:	d003      	beq.n	80011d8 <HAL_GPIO_Init+0x270>
 80011d0:	69ba      	ldr	r2, [r7, #24]
 80011d2:	693b      	ldr	r3, [r7, #16]
 80011d4:	4313      	orrs	r3, r2
 80011d6:	61bb      	str	r3, [r7, #24]
 80011d8:	4a24      	ldr	r2, [pc, #144]	@ (800126c <HAL_GPIO_Init+0x304>)
 80011da:	69bb      	ldr	r3, [r7, #24]
 80011dc:	60d3      	str	r3, [r2, #12]
 80011de:	4b23      	ldr	r3, [pc, #140]	@ (800126c <HAL_GPIO_Init+0x304>)
 80011e0:	685b      	ldr	r3, [r3, #4]
 80011e2:	61bb      	str	r3, [r7, #24]
 80011e4:	693b      	ldr	r3, [r7, #16]
 80011e6:	43db      	mvns	r3, r3
 80011e8:	69ba      	ldr	r2, [r7, #24]
 80011ea:	4013      	ands	r3, r2
 80011ec:	61bb      	str	r3, [r7, #24]
 80011ee:	683b      	ldr	r3, [r7, #0]
 80011f0:	685b      	ldr	r3, [r3, #4]
 80011f2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80011f6:	2b00      	cmp	r3, #0
 80011f8:	d003      	beq.n	8001202 <HAL_GPIO_Init+0x29a>
 80011fa:	69ba      	ldr	r2, [r7, #24]
 80011fc:	693b      	ldr	r3, [r7, #16]
 80011fe:	4313      	orrs	r3, r2
 8001200:	61bb      	str	r3, [r7, #24]
 8001202:	4a1a      	ldr	r2, [pc, #104]	@ (800126c <HAL_GPIO_Init+0x304>)
 8001204:	69bb      	ldr	r3, [r7, #24]
 8001206:	6053      	str	r3, [r2, #4]
 8001208:	4b18      	ldr	r3, [pc, #96]	@ (800126c <HAL_GPIO_Init+0x304>)
 800120a:	681b      	ldr	r3, [r3, #0]
 800120c:	61bb      	str	r3, [r7, #24]
 800120e:	693b      	ldr	r3, [r7, #16]
 8001210:	43db      	mvns	r3, r3
 8001212:	69ba      	ldr	r2, [r7, #24]
 8001214:	4013      	ands	r3, r2
 8001216:	61bb      	str	r3, [r7, #24]
 8001218:	683b      	ldr	r3, [r7, #0]
 800121a:	685b      	ldr	r3, [r3, #4]
 800121c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8001220:	2b00      	cmp	r3, #0
 8001222:	d003      	beq.n	800122c <HAL_GPIO_Init+0x2c4>
 8001224:	69ba      	ldr	r2, [r7, #24]
 8001226:	693b      	ldr	r3, [r7, #16]
 8001228:	4313      	orrs	r3, r2
 800122a:	61bb      	str	r3, [r7, #24]
 800122c:	4a0f      	ldr	r2, [pc, #60]	@ (800126c <HAL_GPIO_Init+0x304>)
 800122e:	69bb      	ldr	r3, [r7, #24]
 8001230:	6013      	str	r3, [r2, #0]
 8001232:	69fb      	ldr	r3, [r7, #28]
 8001234:	3301      	adds	r3, #1
 8001236:	61fb      	str	r3, [r7, #28]
 8001238:	69fb      	ldr	r3, [r7, #28]
 800123a:	2b0f      	cmp	r3, #15
 800123c:	f67f aea2 	bls.w	8000f84 <HAL_GPIO_Init+0x1c>
 8001240:	bf00      	nop
 8001242:	bf00      	nop
 8001244:	3724      	adds	r7, #36	@ 0x24
 8001246:	46bd      	mov	sp, r7
 8001248:	f85d 7b04 	ldr.w	r7, [sp], #4
 800124c:	4770      	bx	lr
 800124e:	bf00      	nop
 8001250:	40023800 	.word	0x40023800
 8001254:	40013800 	.word	0x40013800
 8001258:	40020000 	.word	0x40020000
 800125c:	40020400 	.word	0x40020400
 8001260:	40020800 	.word	0x40020800
 8001264:	40020c00 	.word	0x40020c00
 8001268:	40021000 	.word	0x40021000
 800126c:	40013c00 	.word	0x40013c00

08001270 <HAL_GPIO_WritePin>:
 8001270:	b480      	push	{r7}
 8001272:	b083      	sub	sp, #12
 8001274:	af00      	add	r7, sp, #0
 8001276:	6078      	str	r0, [r7, #4]
 8001278:	460b      	mov	r3, r1
 800127a:	807b      	strh	r3, [r7, #2]
 800127c:	4613      	mov	r3, r2
 800127e:	707b      	strb	r3, [r7, #1]
 8001280:	787b      	ldrb	r3, [r7, #1]
 8001282:	2b00      	cmp	r3, #0
 8001284:	d003      	beq.n	800128e <HAL_GPIO_WritePin+0x1e>
 8001286:	887a      	ldrh	r2, [r7, #2]
 8001288:	687b      	ldr	r3, [r7, #4]
 800128a:	619a      	str	r2, [r3, #24]
 800128c:	e003      	b.n	8001296 <HAL_GPIO_WritePin+0x26>
 800128e:	887b      	ldrh	r3, [r7, #2]
 8001290:	041a      	lsls	r2, r3, #16
 8001292:	687b      	ldr	r3, [r7, #4]
 8001294:	619a      	str	r2, [r3, #24]
 8001296:	bf00      	nop
 8001298:	370c      	adds	r7, #12
 800129a:	46bd      	mov	sp, r7
 800129c:	f85d 7b04 	ldr.w	r7, [sp], #4
 80012a0:	4770      	bx	lr
	...

080012a4 <HAL_RCC_OscConfig>:
 80012a4:	b580      	push	{r7, lr}
 80012a6:	b086      	sub	sp, #24
 80012a8:	af00      	add	r7, sp, #0
 80012aa:	6078      	str	r0, [r7, #4]
 80012ac:	687b      	ldr	r3, [r7, #4]
 80012ae:	2b00      	cmp	r3, #0
 80012b0:	d101      	bne.n	80012b6 <HAL_RCC_OscConfig+0x12>
 80012b2:	2301      	movs	r3, #1
 80012b4:	e267      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80012b6:	687b      	ldr	r3, [r7, #4]
 80012b8:	681b      	ldr	r3, [r3, #0]
 80012ba:	f003 0301 	and.w	r3, r3, #1
 80012be:	2b00      	cmp	r3, #0
 80012c0:	d075      	beq.n	80013ae <HAL_RCC_OscConfig+0x10a>
 80012c2:	4b88      	ldr	r3, [pc, #544]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80012c4:	689b      	ldr	r3, [r3, #8]
 80012c6:	f003 030c 	and.w	r3, r3, #12
 80012ca:	2b04      	cmp	r3, #4
 80012cc:	d00c      	beq.n	80012e8 <HAL_RCC_OscConfig+0x44>
 80012ce:	4b85      	ldr	r3, [pc, #532]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80012d0:	689b      	ldr	r3, [r3, #8]
 80012d2:	f003 030c 	and.w	r3, r3, #12
 80012d6:	2b08      	cmp	r3, #8
 80012d8:	d112      	bne.n	8001300 <HAL_RCC_OscConfig+0x5c>
 80012da:	4b82      	ldr	r3, [pc, #520]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80012dc:	685b      	ldr	r3, [r3, #4]
 80012de:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 80012e2:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 80012e6:	d10b      	bne.n	8001300 <HAL_RCC_OscConfig+0x5c>
 80012e8:	4b7e      	ldr	r3, [pc, #504]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80012ea:	681b      	ldr	r3, [r3, #0]
 80012ec:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80012f0:	2b00      	cmp	r3, #0
 80012f2:	d05b      	beq.n	80013ac <HAL_RCC_OscConfig+0x108>
 80012f4:	687b      	ldr	r3, [r7, #4]
 80012f6:	685b      	ldr	r3, [r3, #4]
 80012f8:	2b00      	cmp	r3, #0
 80012fa:	d157      	bne.n	80013ac <HAL_RCC_OscConfig+0x108>
 80012fc:	2301      	movs	r3, #1
 80012fe:	e242      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001300:	687b      	ldr	r3, [r7, #4]
 8001302:	685b      	ldr	r3, [r3, #4]
 8001304:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8001308:	d106      	bne.n	8001318 <HAL_RCC_OscConfig+0x74>
 800130a:	4b76      	ldr	r3, [pc, #472]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 800130c:	681b      	ldr	r3, [r3, #0]
 800130e:	4a75      	ldr	r2, [pc, #468]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001310:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001314:	6013      	str	r3, [r2, #0]
 8001316:	e01d      	b.n	8001354 <HAL_RCC_OscConfig+0xb0>
 8001318:	687b      	ldr	r3, [r7, #4]
 800131a:	685b      	ldr	r3, [r3, #4]
 800131c:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 8001320:	d10c      	bne.n	800133c <HAL_RCC_OscConfig+0x98>
 8001322:	4b70      	ldr	r3, [pc, #448]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001324:	681b      	ldr	r3, [r3, #0]
 8001326:	4a6f      	ldr	r2, [pc, #444]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001328:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 800132c:	6013      	str	r3, [r2, #0]
 800132e:	4b6d      	ldr	r3, [pc, #436]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001330:	681b      	ldr	r3, [r3, #0]
 8001332:	4a6c      	ldr	r2, [pc, #432]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001334:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001338:	6013      	str	r3, [r2, #0]
 800133a:	e00b      	b.n	8001354 <HAL_RCC_OscConfig+0xb0>
 800133c:	4b69      	ldr	r3, [pc, #420]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 800133e:	681b      	ldr	r3, [r3, #0]
 8001340:	4a68      	ldr	r2, [pc, #416]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001342:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001346:	6013      	str	r3, [r2, #0]
 8001348:	4b66      	ldr	r3, [pc, #408]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 800134a:	681b      	ldr	r3, [r3, #0]
 800134c:	4a65      	ldr	r2, [pc, #404]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 800134e:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 8001352:	6013      	str	r3, [r2, #0]
 8001354:	687b      	ldr	r3, [r7, #4]
 8001356:	685b      	ldr	r3, [r3, #4]
 8001358:	2b00      	cmp	r3, #0
 800135a:	d013      	beq.n	8001384 <HAL_RCC_OscConfig+0xe0>
 800135c:	f7ff fce6 	bl	8000d2c <HAL_GetTick>
 8001360:	6138      	str	r0, [r7, #16]
 8001362:	e008      	b.n	8001376 <HAL_RCC_OscConfig+0xd2>
 8001364:	f7ff fce2 	bl	8000d2c <HAL_GetTick>
 8001368:	4602      	mov	r2, r0
 800136a:	693b      	ldr	r3, [r7, #16]
 800136c:	1ad3      	subs	r3, r2, r3
 800136e:	2b64      	cmp	r3, #100	@ 0x64
 8001370:	d901      	bls.n	8001376 <HAL_RCC_OscConfig+0xd2>
 8001372:	2303      	movs	r3, #3
 8001374:	e207      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001376:	4b5b      	ldr	r3, [pc, #364]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001378:	681b      	ldr	r3, [r3, #0]
 800137a:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800137e:	2b00      	cmp	r3, #0
 8001380:	d0f0      	beq.n	8001364 <HAL_RCC_OscConfig+0xc0>
 8001382:	e014      	b.n	80013ae <HAL_RCC_OscConfig+0x10a>
 8001384:	f7ff fcd2 	bl	8000d2c <HAL_GetTick>
 8001388:	6138      	str	r0, [r7, #16]
 800138a:	e008      	b.n	800139e <HAL_RCC_OscConfig+0xfa>
 800138c:	f7ff fcce 	bl	8000d2c <HAL_GetTick>
 8001390:	4602      	mov	r2, r0
 8001392:	693b      	ldr	r3, [r7, #16]
 8001394:	1ad3      	subs	r3, r2, r3
 8001396:	2b64      	cmp	r3, #100	@ 0x64
 8001398:	d901      	bls.n	800139e <HAL_RCC_OscConfig+0xfa>
 800139a:	2303      	movs	r3, #3
 800139c:	e1f3      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 800139e:	4b51      	ldr	r3, [pc, #324]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013a0:	681b      	ldr	r3, [r3, #0]
 80013a2:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80013a6:	2b00      	cmp	r3, #0
 80013a8:	d1f0      	bne.n	800138c <HAL_RCC_OscConfig+0xe8>
 80013aa:	e000      	b.n	80013ae <HAL_RCC_OscConfig+0x10a>
 80013ac:	bf00      	nop
 80013ae:	687b      	ldr	r3, [r7, #4]
 80013b0:	681b      	ldr	r3, [r3, #0]
 80013b2:	f003 0302 	and.w	r3, r3, #2
 80013b6:	2b00      	cmp	r3, #0
 80013b8:	d063      	beq.n	8001482 <HAL_RCC_OscConfig+0x1de>
 80013ba:	4b4a      	ldr	r3, [pc, #296]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013bc:	689b      	ldr	r3, [r3, #8]
 80013be:	f003 030c 	and.w	r3, r3, #12
 80013c2:	2b00      	cmp	r3, #0
 80013c4:	d00b      	beq.n	80013de <HAL_RCC_OscConfig+0x13a>
 80013c6:	4b47      	ldr	r3, [pc, #284]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013c8:	689b      	ldr	r3, [r3, #8]
 80013ca:	f003 030c 	and.w	r3, r3, #12
 80013ce:	2b08      	cmp	r3, #8
 80013d0:	d11c      	bne.n	800140c <HAL_RCC_OscConfig+0x168>
 80013d2:	4b44      	ldr	r3, [pc, #272]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013d4:	685b      	ldr	r3, [r3, #4]
 80013d6:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 80013da:	2b00      	cmp	r3, #0
 80013dc:	d116      	bne.n	800140c <HAL_RCC_OscConfig+0x168>
 80013de:	4b41      	ldr	r3, [pc, #260]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013e0:	681b      	ldr	r3, [r3, #0]
 80013e2:	f003 0302 	and.w	r3, r3, #2
 80013e6:	2b00      	cmp	r3, #0
 80013e8:	d005      	beq.n	80013f6 <HAL_RCC_OscConfig+0x152>
 80013ea:	687b      	ldr	r3, [r7, #4]
 80013ec:	68db      	ldr	r3, [r3, #12]
 80013ee:	2b01      	cmp	r3, #1
 80013f0:	d001      	beq.n	80013f6 <HAL_RCC_OscConfig+0x152>
 80013f2:	2301      	movs	r3, #1
 80013f4:	e1c7      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80013f6:	4b3b      	ldr	r3, [pc, #236]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80013f8:	681b      	ldr	r3, [r3, #0]
 80013fa:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 80013fe:	687b      	ldr	r3, [r7, #4]
 8001400:	691b      	ldr	r3, [r3, #16]
 8001402:	00db      	lsls	r3, r3, #3
 8001404:	4937      	ldr	r1, [pc, #220]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001406:	4313      	orrs	r3, r2
 8001408:	600b      	str	r3, [r1, #0]
 800140a:	e03a      	b.n	8001482 <HAL_RCC_OscConfig+0x1de>
 800140c:	687b      	ldr	r3, [r7, #4]
 800140e:	68db      	ldr	r3, [r3, #12]
 8001410:	2b00      	cmp	r3, #0
 8001412:	d020      	beq.n	8001456 <HAL_RCC_OscConfig+0x1b2>
 8001414:	4b34      	ldr	r3, [pc, #208]	@ (80014e8 <HAL_RCC_OscConfig+0x244>)
 8001416:	2201      	movs	r2, #1
 8001418:	601a      	str	r2, [r3, #0]
 800141a:	f7ff fc87 	bl	8000d2c <HAL_GetTick>
 800141e:	6138      	str	r0, [r7, #16]
 8001420:	e008      	b.n	8001434 <HAL_RCC_OscConfig+0x190>
 8001422:	f7ff fc83 	bl	8000d2c <HAL_GetTick>
 8001426:	4602      	mov	r2, r0
 8001428:	693b      	ldr	r3, [r7, #16]
 800142a:	1ad3      	subs	r3, r2, r3
 800142c:	2b02      	cmp	r3, #2
 800142e:	d901      	bls.n	8001434 <HAL_RCC_OscConfig+0x190>
 8001430:	2303      	movs	r3, #3
 8001432:	e1a8      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001434:	4b2b      	ldr	r3, [pc, #172]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001436:	681b      	ldr	r3, [r3, #0]
 8001438:	f003 0302 	and.w	r3, r3, #2
 800143c:	2b00      	cmp	r3, #0
 800143e:	d0f0      	beq.n	8001422 <HAL_RCC_OscConfig+0x17e>
 8001440:	4b28      	ldr	r3, [pc, #160]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001442:	681b      	ldr	r3, [r3, #0]
 8001444:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 8001448:	687b      	ldr	r3, [r7, #4]
 800144a:	691b      	ldr	r3, [r3, #16]
 800144c:	00db      	lsls	r3, r3, #3
 800144e:	4925      	ldr	r1, [pc, #148]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001450:	4313      	orrs	r3, r2
 8001452:	600b      	str	r3, [r1, #0]
 8001454:	e015      	b.n	8001482 <HAL_RCC_OscConfig+0x1de>
 8001456:	4b24      	ldr	r3, [pc, #144]	@ (80014e8 <HAL_RCC_OscConfig+0x244>)
 8001458:	2200      	movs	r2, #0
 800145a:	601a      	str	r2, [r3, #0]
 800145c:	f7ff fc66 	bl	8000d2c <HAL_GetTick>
 8001460:	6138      	str	r0, [r7, #16]
 8001462:	e008      	b.n	8001476 <HAL_RCC_OscConfig+0x1d2>
 8001464:	f7ff fc62 	bl	8000d2c <HAL_GetTick>
 8001468:	4602      	mov	r2, r0
 800146a:	693b      	ldr	r3, [r7, #16]
 800146c:	1ad3      	subs	r3, r2, r3
 800146e:	2b02      	cmp	r3, #2
 8001470:	d901      	bls.n	8001476 <HAL_RCC_OscConfig+0x1d2>
 8001472:	2303      	movs	r3, #3
 8001474:	e187      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001476:	4b1b      	ldr	r3, [pc, #108]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 8001478:	681b      	ldr	r3, [r3, #0]
 800147a:	f003 0302 	and.w	r3, r3, #2
 800147e:	2b00      	cmp	r3, #0
 8001480:	d1f0      	bne.n	8001464 <HAL_RCC_OscConfig+0x1c0>
 8001482:	687b      	ldr	r3, [r7, #4]
 8001484:	681b      	ldr	r3, [r3, #0]
 8001486:	f003 0308 	and.w	r3, r3, #8
 800148a:	2b00      	cmp	r3, #0
 800148c:	d036      	beq.n	80014fc <HAL_RCC_OscConfig+0x258>
 800148e:	687b      	ldr	r3, [r7, #4]
 8001490:	695b      	ldr	r3, [r3, #20]
 8001492:	2b00      	cmp	r3, #0
 8001494:	d016      	beq.n	80014c4 <HAL_RCC_OscConfig+0x220>
 8001496:	4b15      	ldr	r3, [pc, #84]	@ (80014ec <HAL_RCC_OscConfig+0x248>)
 8001498:	2201      	movs	r2, #1
 800149a:	601a      	str	r2, [r3, #0]
 800149c:	f7ff fc46 	bl	8000d2c <HAL_GetTick>
 80014a0:	6138      	str	r0, [r7, #16]
 80014a2:	e008      	b.n	80014b6 <HAL_RCC_OscConfig+0x212>
 80014a4:	f7ff fc42 	bl	8000d2c <HAL_GetTick>
 80014a8:	4602      	mov	r2, r0
 80014aa:	693b      	ldr	r3, [r7, #16]
 80014ac:	1ad3      	subs	r3, r2, r3
 80014ae:	2b02      	cmp	r3, #2
 80014b0:	d901      	bls.n	80014b6 <HAL_RCC_OscConfig+0x212>
 80014b2:	2303      	movs	r3, #3
 80014b4:	e167      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80014b6:	4b0b      	ldr	r3, [pc, #44]	@ (80014e4 <HAL_RCC_OscConfig+0x240>)
 80014b8:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 80014ba:	f003 0302 	and.w	r3, r3, #2
 80014be:	2b00      	cmp	r3, #0
 80014c0:	d0f0      	beq.n	80014a4 <HAL_RCC_OscConfig+0x200>
 80014c2:	e01b      	b.n	80014fc <HAL_RCC_OscConfig+0x258>
 80014c4:	4b09      	ldr	r3, [pc, #36]	@ (80014ec <HAL_RCC_OscConfig+0x248>)
 80014c6:	2200      	movs	r2, #0
 80014c8:	601a      	str	r2, [r3, #0]
 80014ca:	f7ff fc2f 	bl	8000d2c <HAL_GetTick>
 80014ce:	6138      	str	r0, [r7, #16]
 80014d0:	e00e      	b.n	80014f0 <HAL_RCC_OscConfig+0x24c>
 80014d2:	f7ff fc2b 	bl	8000d2c <HAL_GetTick>
 80014d6:	4602      	mov	r2, r0
 80014d8:	693b      	ldr	r3, [r7, #16]
 80014da:	1ad3      	subs	r3, r2, r3
 80014dc:	2b02      	cmp	r3, #2
 80014de:	d907      	bls.n	80014f0 <HAL_RCC_OscConfig+0x24c>
 80014e0:	2303      	movs	r3, #3
 80014e2:	e150      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80014e4:	40023800 	.word	0x40023800
 80014e8:	42470000 	.word	0x42470000
 80014ec:	42470e80 	.word	0x42470e80
 80014f0:	4b88      	ldr	r3, [pc, #544]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80014f2:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 80014f4:	f003 0302 	and.w	r3, r3, #2
 80014f8:	2b00      	cmp	r3, #0
 80014fa:	d1ea      	bne.n	80014d2 <HAL_RCC_OscConfig+0x22e>
 80014fc:	687b      	ldr	r3, [r7, #4]
 80014fe:	681b      	ldr	r3, [r3, #0]
 8001500:	f003 0304 	and.w	r3, r3, #4
 8001504:	2b00      	cmp	r3, #0
 8001506:	f000 8097 	beq.w	8001638 <HAL_RCC_OscConfig+0x394>
 800150a:	2300      	movs	r3, #0
 800150c:	75fb      	strb	r3, [r7, #23]
 800150e:	4b81      	ldr	r3, [pc, #516]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001510:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001512:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001516:	2b00      	cmp	r3, #0
 8001518:	d10f      	bne.n	800153a <HAL_RCC_OscConfig+0x296>
 800151a:	2300      	movs	r3, #0
 800151c:	60bb      	str	r3, [r7, #8]
 800151e:	4b7d      	ldr	r3, [pc, #500]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001520:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001522:	4a7c      	ldr	r2, [pc, #496]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001524:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8001528:	6413      	str	r3, [r2, #64]	@ 0x40
 800152a:	4b7a      	ldr	r3, [pc, #488]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 800152c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800152e:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8001532:	60bb      	str	r3, [r7, #8]
 8001534:	68bb      	ldr	r3, [r7, #8]
 8001536:	2301      	movs	r3, #1
 8001538:	75fb      	strb	r3, [r7, #23]
 800153a:	4b77      	ldr	r3, [pc, #476]	@ (8001718 <HAL_RCC_OscConfig+0x474>)
 800153c:	681b      	ldr	r3, [r3, #0]
 800153e:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8001542:	2b00      	cmp	r3, #0
 8001544:	d118      	bne.n	8001578 <HAL_RCC_OscConfig+0x2d4>
 8001546:	4b74      	ldr	r3, [pc, #464]	@ (8001718 <HAL_RCC_OscConfig+0x474>)
 8001548:	681b      	ldr	r3, [r3, #0]
 800154a:	4a73      	ldr	r2, [pc, #460]	@ (8001718 <HAL_RCC_OscConfig+0x474>)
 800154c:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001550:	6013      	str	r3, [r2, #0]
 8001552:	f7ff fbeb 	bl	8000d2c <HAL_GetTick>
 8001556:	6138      	str	r0, [r7, #16]
 8001558:	e008      	b.n	800156c <HAL_RCC_OscConfig+0x2c8>
 800155a:	f7ff fbe7 	bl	8000d2c <HAL_GetTick>
 800155e:	4602      	mov	r2, r0
 8001560:	693b      	ldr	r3, [r7, #16]
 8001562:	1ad3      	subs	r3, r2, r3
 8001564:	2b02      	cmp	r3, #2
 8001566:	d901      	bls.n	800156c <HAL_RCC_OscConfig+0x2c8>
 8001568:	2303      	movs	r3, #3
 800156a:	e10c      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 800156c:	4b6a      	ldr	r3, [pc, #424]	@ (8001718 <HAL_RCC_OscConfig+0x474>)
 800156e:	681b      	ldr	r3, [r3, #0]
 8001570:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8001574:	2b00      	cmp	r3, #0
 8001576:	d0f0      	beq.n	800155a <HAL_RCC_OscConfig+0x2b6>
 8001578:	687b      	ldr	r3, [r7, #4]
 800157a:	689b      	ldr	r3, [r3, #8]
 800157c:	2b01      	cmp	r3, #1
 800157e:	d106      	bne.n	800158e <HAL_RCC_OscConfig+0x2ea>
 8001580:	4b64      	ldr	r3, [pc, #400]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001582:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001584:	4a63      	ldr	r2, [pc, #396]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001586:	f043 0301 	orr.w	r3, r3, #1
 800158a:	6713      	str	r3, [r2, #112]	@ 0x70
 800158c:	e01c      	b.n	80015c8 <HAL_RCC_OscConfig+0x324>
 800158e:	687b      	ldr	r3, [r7, #4]
 8001590:	689b      	ldr	r3, [r3, #8]
 8001592:	2b05      	cmp	r3, #5
 8001594:	d10c      	bne.n	80015b0 <HAL_RCC_OscConfig+0x30c>
 8001596:	4b5f      	ldr	r3, [pc, #380]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001598:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 800159a:	4a5e      	ldr	r2, [pc, #376]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 800159c:	f043 0304 	orr.w	r3, r3, #4
 80015a0:	6713      	str	r3, [r2, #112]	@ 0x70
 80015a2:	4b5c      	ldr	r3, [pc, #368]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015a4:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80015a6:	4a5b      	ldr	r2, [pc, #364]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015a8:	f043 0301 	orr.w	r3, r3, #1
 80015ac:	6713      	str	r3, [r2, #112]	@ 0x70
 80015ae:	e00b      	b.n	80015c8 <HAL_RCC_OscConfig+0x324>
 80015b0:	4b58      	ldr	r3, [pc, #352]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015b2:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80015b4:	4a57      	ldr	r2, [pc, #348]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015b6:	f023 0301 	bic.w	r3, r3, #1
 80015ba:	6713      	str	r3, [r2, #112]	@ 0x70
 80015bc:	4b55      	ldr	r3, [pc, #340]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015be:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80015c0:	4a54      	ldr	r2, [pc, #336]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015c2:	f023 0304 	bic.w	r3, r3, #4
 80015c6:	6713      	str	r3, [r2, #112]	@ 0x70
 80015c8:	687b      	ldr	r3, [r7, #4]
 80015ca:	689b      	ldr	r3, [r3, #8]
 80015cc:	2b00      	cmp	r3, #0
 80015ce:	d015      	beq.n	80015fc <HAL_RCC_OscConfig+0x358>
 80015d0:	f7ff fbac 	bl	8000d2c <HAL_GetTick>
 80015d4:	6138      	str	r0, [r7, #16]
 80015d6:	e00a      	b.n	80015ee <HAL_RCC_OscConfig+0x34a>
 80015d8:	f7ff fba8 	bl	8000d2c <HAL_GetTick>
 80015dc:	4602      	mov	r2, r0
 80015de:	693b      	ldr	r3, [r7, #16]
 80015e0:	1ad3      	subs	r3, r2, r3
 80015e2:	f241 3288 	movw	r2, #5000	@ 0x1388
 80015e6:	4293      	cmp	r3, r2
 80015e8:	d901      	bls.n	80015ee <HAL_RCC_OscConfig+0x34a>
 80015ea:	2303      	movs	r3, #3
 80015ec:	e0cb      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80015ee:	4b49      	ldr	r3, [pc, #292]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80015f0:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80015f2:	f003 0302 	and.w	r3, r3, #2
 80015f6:	2b00      	cmp	r3, #0
 80015f8:	d0ee      	beq.n	80015d8 <HAL_RCC_OscConfig+0x334>
 80015fa:	e014      	b.n	8001626 <HAL_RCC_OscConfig+0x382>
 80015fc:	f7ff fb96 	bl	8000d2c <HAL_GetTick>
 8001600:	6138      	str	r0, [r7, #16]
 8001602:	e00a      	b.n	800161a <HAL_RCC_OscConfig+0x376>
 8001604:	f7ff fb92 	bl	8000d2c <HAL_GetTick>
 8001608:	4602      	mov	r2, r0
 800160a:	693b      	ldr	r3, [r7, #16]
 800160c:	1ad3      	subs	r3, r2, r3
 800160e:	f241 3288 	movw	r2, #5000	@ 0x1388
 8001612:	4293      	cmp	r3, r2
 8001614:	d901      	bls.n	800161a <HAL_RCC_OscConfig+0x376>
 8001616:	2303      	movs	r3, #3
 8001618:	e0b5      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 800161a:	4b3e      	ldr	r3, [pc, #248]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 800161c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 800161e:	f003 0302 	and.w	r3, r3, #2
 8001622:	2b00      	cmp	r3, #0
 8001624:	d1ee      	bne.n	8001604 <HAL_RCC_OscConfig+0x360>
 8001626:	7dfb      	ldrb	r3, [r7, #23]
 8001628:	2b01      	cmp	r3, #1
 800162a:	d105      	bne.n	8001638 <HAL_RCC_OscConfig+0x394>
 800162c:	4b39      	ldr	r3, [pc, #228]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 800162e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001630:	4a38      	ldr	r2, [pc, #224]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001632:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8001636:	6413      	str	r3, [r2, #64]	@ 0x40
 8001638:	687b      	ldr	r3, [r7, #4]
 800163a:	699b      	ldr	r3, [r3, #24]
 800163c:	2b00      	cmp	r3, #0
 800163e:	f000 80a1 	beq.w	8001784 <HAL_RCC_OscConfig+0x4e0>
 8001642:	4b34      	ldr	r3, [pc, #208]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001644:	689b      	ldr	r3, [r3, #8]
 8001646:	f003 030c 	and.w	r3, r3, #12
 800164a:	2b08      	cmp	r3, #8
 800164c:	d05c      	beq.n	8001708 <HAL_RCC_OscConfig+0x464>
 800164e:	687b      	ldr	r3, [r7, #4]
 8001650:	699b      	ldr	r3, [r3, #24]
 8001652:	2b02      	cmp	r3, #2
 8001654:	d141      	bne.n	80016da <HAL_RCC_OscConfig+0x436>
 8001656:	4b31      	ldr	r3, [pc, #196]	@ (800171c <HAL_RCC_OscConfig+0x478>)
 8001658:	2200      	movs	r2, #0
 800165a:	601a      	str	r2, [r3, #0]
 800165c:	f7ff fb66 	bl	8000d2c <HAL_GetTick>
 8001660:	6138      	str	r0, [r7, #16]
 8001662:	e008      	b.n	8001676 <HAL_RCC_OscConfig+0x3d2>
 8001664:	f7ff fb62 	bl	8000d2c <HAL_GetTick>
 8001668:	4602      	mov	r2, r0
 800166a:	693b      	ldr	r3, [r7, #16]
 800166c:	1ad3      	subs	r3, r2, r3
 800166e:	2b02      	cmp	r3, #2
 8001670:	d901      	bls.n	8001676 <HAL_RCC_OscConfig+0x3d2>
 8001672:	2303      	movs	r3, #3
 8001674:	e087      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001676:	4b27      	ldr	r3, [pc, #156]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 8001678:	681b      	ldr	r3, [r3, #0]
 800167a:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 800167e:	2b00      	cmp	r3, #0
 8001680:	d1f0      	bne.n	8001664 <HAL_RCC_OscConfig+0x3c0>
 8001682:	687b      	ldr	r3, [r7, #4]
 8001684:	69da      	ldr	r2, [r3, #28]
 8001686:	687b      	ldr	r3, [r7, #4]
 8001688:	6a1b      	ldr	r3, [r3, #32]
 800168a:	431a      	orrs	r2, r3
 800168c:	687b      	ldr	r3, [r7, #4]
 800168e:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001690:	019b      	lsls	r3, r3, #6
 8001692:	431a      	orrs	r2, r3
 8001694:	687b      	ldr	r3, [r7, #4]
 8001696:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001698:	085b      	lsrs	r3, r3, #1
 800169a:	3b01      	subs	r3, #1
 800169c:	041b      	lsls	r3, r3, #16
 800169e:	431a      	orrs	r2, r3
 80016a0:	687b      	ldr	r3, [r7, #4]
 80016a2:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80016a4:	061b      	lsls	r3, r3, #24
 80016a6:	491b      	ldr	r1, [pc, #108]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80016a8:	4313      	orrs	r3, r2
 80016aa:	604b      	str	r3, [r1, #4]
 80016ac:	4b1b      	ldr	r3, [pc, #108]	@ (800171c <HAL_RCC_OscConfig+0x478>)
 80016ae:	2201      	movs	r2, #1
 80016b0:	601a      	str	r2, [r3, #0]
 80016b2:	f7ff fb3b 	bl	8000d2c <HAL_GetTick>
 80016b6:	6138      	str	r0, [r7, #16]
 80016b8:	e008      	b.n	80016cc <HAL_RCC_OscConfig+0x428>
 80016ba:	f7ff fb37 	bl	8000d2c <HAL_GetTick>
 80016be:	4602      	mov	r2, r0
 80016c0:	693b      	ldr	r3, [r7, #16]
 80016c2:	1ad3      	subs	r3, r2, r3
 80016c4:	2b02      	cmp	r3, #2
 80016c6:	d901      	bls.n	80016cc <HAL_RCC_OscConfig+0x428>
 80016c8:	2303      	movs	r3, #3
 80016ca:	e05c      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80016cc:	4b11      	ldr	r3, [pc, #68]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80016ce:	681b      	ldr	r3, [r3, #0]
 80016d0:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 80016d4:	2b00      	cmp	r3, #0
 80016d6:	d0f0      	beq.n	80016ba <HAL_RCC_OscConfig+0x416>
 80016d8:	e054      	b.n	8001784 <HAL_RCC_OscConfig+0x4e0>
 80016da:	4b10      	ldr	r3, [pc, #64]	@ (800171c <HAL_RCC_OscConfig+0x478>)
 80016dc:	2200      	movs	r2, #0
 80016de:	601a      	str	r2, [r3, #0]
 80016e0:	f7ff fb24 	bl	8000d2c <HAL_GetTick>
 80016e4:	6138      	str	r0, [r7, #16]
 80016e6:	e008      	b.n	80016fa <HAL_RCC_OscConfig+0x456>
 80016e8:	f7ff fb20 	bl	8000d2c <HAL_GetTick>
 80016ec:	4602      	mov	r2, r0
 80016ee:	693b      	ldr	r3, [r7, #16]
 80016f0:	1ad3      	subs	r3, r2, r3
 80016f2:	2b02      	cmp	r3, #2
 80016f4:	d901      	bls.n	80016fa <HAL_RCC_OscConfig+0x456>
 80016f6:	2303      	movs	r3, #3
 80016f8:	e045      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 80016fa:	4b06      	ldr	r3, [pc, #24]	@ (8001714 <HAL_RCC_OscConfig+0x470>)
 80016fc:	681b      	ldr	r3, [r3, #0]
 80016fe:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8001702:	2b00      	cmp	r3, #0
 8001704:	d1f0      	bne.n	80016e8 <HAL_RCC_OscConfig+0x444>
 8001706:	e03d      	b.n	8001784 <HAL_RCC_OscConfig+0x4e0>
 8001708:	687b      	ldr	r3, [r7, #4]
 800170a:	699b      	ldr	r3, [r3, #24]
 800170c:	2b01      	cmp	r3, #1
 800170e:	d107      	bne.n	8001720 <HAL_RCC_OscConfig+0x47c>
 8001710:	2301      	movs	r3, #1
 8001712:	e038      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001714:	40023800 	.word	0x40023800
 8001718:	40007000 	.word	0x40007000
 800171c:	42470060 	.word	0x42470060
 8001720:	4b1b      	ldr	r3, [pc, #108]	@ (8001790 <HAL_RCC_OscConfig+0x4ec>)
 8001722:	685b      	ldr	r3, [r3, #4]
 8001724:	60fb      	str	r3, [r7, #12]
 8001726:	687b      	ldr	r3, [r7, #4]
 8001728:	699b      	ldr	r3, [r3, #24]
 800172a:	2b01      	cmp	r3, #1
 800172c:	d028      	beq.n	8001780 <HAL_RCC_OscConfig+0x4dc>
 800172e:	68fb      	ldr	r3, [r7, #12]
 8001730:	f403 0280 	and.w	r2, r3, #4194304	@ 0x400000
 8001734:	687b      	ldr	r3, [r7, #4]
 8001736:	69db      	ldr	r3, [r3, #28]
 8001738:	429a      	cmp	r2, r3
 800173a:	d121      	bne.n	8001780 <HAL_RCC_OscConfig+0x4dc>
 800173c:	68fb      	ldr	r3, [r7, #12]
 800173e:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
 8001742:	687b      	ldr	r3, [r7, #4]
 8001744:	6a1b      	ldr	r3, [r3, #32]
 8001746:	429a      	cmp	r2, r3
 8001748:	d11a      	bne.n	8001780 <HAL_RCC_OscConfig+0x4dc>
 800174a:	68fa      	ldr	r2, [r7, #12]
 800174c:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 8001750:	4013      	ands	r3, r2
 8001752:	687a      	ldr	r2, [r7, #4]
 8001754:	6a52      	ldr	r2, [r2, #36]	@ 0x24
 8001756:	0192      	lsls	r2, r2, #6
 8001758:	4293      	cmp	r3, r2
 800175a:	d111      	bne.n	8001780 <HAL_RCC_OscConfig+0x4dc>
 800175c:	68fb      	ldr	r3, [r7, #12]
 800175e:	f403 3240 	and.w	r2, r3, #196608	@ 0x30000
 8001762:	687b      	ldr	r3, [r7, #4]
 8001764:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001766:	085b      	lsrs	r3, r3, #1
 8001768:	3b01      	subs	r3, #1
 800176a:	041b      	lsls	r3, r3, #16
 800176c:	429a      	cmp	r2, r3
 800176e:	d107      	bne.n	8001780 <HAL_RCC_OscConfig+0x4dc>
 8001770:	68fb      	ldr	r3, [r7, #12]
 8001772:	f003 6270 	and.w	r2, r3, #251658240	@ 0xf000000
 8001776:	687b      	ldr	r3, [r7, #4]
 8001778:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800177a:	061b      	lsls	r3, r3, #24
 800177c:	429a      	cmp	r2, r3
 800177e:	d001      	beq.n	8001784 <HAL_RCC_OscConfig+0x4e0>
 8001780:	2301      	movs	r3, #1
 8001782:	e000      	b.n	8001786 <HAL_RCC_OscConfig+0x4e2>
 8001784:	2300      	movs	r3, #0
 8001786:	4618      	mov	r0, r3
 8001788:	3718      	adds	r7, #24
 800178a:	46bd      	mov	sp, r7
 800178c:	bd80      	pop	{r7, pc}
 800178e:	bf00      	nop
 8001790:	40023800 	.word	0x40023800

08001794 <HAL_RCC_ClockConfig>:
 8001794:	b580      	push	{r7, lr}
 8001796:	b084      	sub	sp, #16
 8001798:	af00      	add	r7, sp, #0
 800179a:	6078      	str	r0, [r7, #4]
 800179c:	6039      	str	r1, [r7, #0]
 800179e:	687b      	ldr	r3, [r7, #4]
 80017a0:	2b00      	cmp	r3, #0
 80017a2:	d101      	bne.n	80017a8 <HAL_RCC_ClockConfig+0x14>
 80017a4:	2301      	movs	r3, #1
 80017a6:	e0cc      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 80017a8:	4b68      	ldr	r3, [pc, #416]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80017aa:	681b      	ldr	r3, [r3, #0]
 80017ac:	f003 0307 	and.w	r3, r3, #7
 80017b0:	683a      	ldr	r2, [r7, #0]
 80017b2:	429a      	cmp	r2, r3
 80017b4:	d90c      	bls.n	80017d0 <HAL_RCC_ClockConfig+0x3c>
 80017b6:	4b65      	ldr	r3, [pc, #404]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80017b8:	683a      	ldr	r2, [r7, #0]
 80017ba:	b2d2      	uxtb	r2, r2
 80017bc:	701a      	strb	r2, [r3, #0]
 80017be:	4b63      	ldr	r3, [pc, #396]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80017c0:	681b      	ldr	r3, [r3, #0]
 80017c2:	f003 0307 	and.w	r3, r3, #7
 80017c6:	683a      	ldr	r2, [r7, #0]
 80017c8:	429a      	cmp	r2, r3
 80017ca:	d001      	beq.n	80017d0 <HAL_RCC_ClockConfig+0x3c>
 80017cc:	2301      	movs	r3, #1
 80017ce:	e0b8      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 80017d0:	687b      	ldr	r3, [r7, #4]
 80017d2:	681b      	ldr	r3, [r3, #0]
 80017d4:	f003 0302 	and.w	r3, r3, #2
 80017d8:	2b00      	cmp	r3, #0
 80017da:	d020      	beq.n	800181e <HAL_RCC_ClockConfig+0x8a>
 80017dc:	687b      	ldr	r3, [r7, #4]
 80017de:	681b      	ldr	r3, [r3, #0]
 80017e0:	f003 0304 	and.w	r3, r3, #4
 80017e4:	2b00      	cmp	r3, #0
 80017e6:	d005      	beq.n	80017f4 <HAL_RCC_ClockConfig+0x60>
 80017e8:	4b59      	ldr	r3, [pc, #356]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 80017ea:	689b      	ldr	r3, [r3, #8]
 80017ec:	4a58      	ldr	r2, [pc, #352]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 80017ee:	f443 53e0 	orr.w	r3, r3, #7168	@ 0x1c00
 80017f2:	6093      	str	r3, [r2, #8]
 80017f4:	687b      	ldr	r3, [r7, #4]
 80017f6:	681b      	ldr	r3, [r3, #0]
 80017f8:	f003 0308 	and.w	r3, r3, #8
 80017fc:	2b00      	cmp	r3, #0
 80017fe:	d005      	beq.n	800180c <HAL_RCC_ClockConfig+0x78>
 8001800:	4b53      	ldr	r3, [pc, #332]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001802:	689b      	ldr	r3, [r3, #8]
 8001804:	4a52      	ldr	r2, [pc, #328]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001806:	f443 4360 	orr.w	r3, r3, #57344	@ 0xe000
 800180a:	6093      	str	r3, [r2, #8]
 800180c:	4b50      	ldr	r3, [pc, #320]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 800180e:	689b      	ldr	r3, [r3, #8]
 8001810:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8001814:	687b      	ldr	r3, [r7, #4]
 8001816:	689b      	ldr	r3, [r3, #8]
 8001818:	494d      	ldr	r1, [pc, #308]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 800181a:	4313      	orrs	r3, r2
 800181c:	608b      	str	r3, [r1, #8]
 800181e:	687b      	ldr	r3, [r7, #4]
 8001820:	681b      	ldr	r3, [r3, #0]
 8001822:	f003 0301 	and.w	r3, r3, #1
 8001826:	2b00      	cmp	r3, #0
 8001828:	d044      	beq.n	80018b4 <HAL_RCC_ClockConfig+0x120>
 800182a:	687b      	ldr	r3, [r7, #4]
 800182c:	685b      	ldr	r3, [r3, #4]
 800182e:	2b01      	cmp	r3, #1
 8001830:	d107      	bne.n	8001842 <HAL_RCC_ClockConfig+0xae>
 8001832:	4b47      	ldr	r3, [pc, #284]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001834:	681b      	ldr	r3, [r3, #0]
 8001836:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800183a:	2b00      	cmp	r3, #0
 800183c:	d119      	bne.n	8001872 <HAL_RCC_ClockConfig+0xde>
 800183e:	2301      	movs	r3, #1
 8001840:	e07f      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 8001842:	687b      	ldr	r3, [r7, #4]
 8001844:	685b      	ldr	r3, [r3, #4]
 8001846:	2b02      	cmp	r3, #2
 8001848:	d003      	beq.n	8001852 <HAL_RCC_ClockConfig+0xbe>
 800184a:	687b      	ldr	r3, [r7, #4]
 800184c:	685b      	ldr	r3, [r3, #4]
 800184e:	2b03      	cmp	r3, #3
 8001850:	d107      	bne.n	8001862 <HAL_RCC_ClockConfig+0xce>
 8001852:	4b3f      	ldr	r3, [pc, #252]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001854:	681b      	ldr	r3, [r3, #0]
 8001856:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 800185a:	2b00      	cmp	r3, #0
 800185c:	d109      	bne.n	8001872 <HAL_RCC_ClockConfig+0xde>
 800185e:	2301      	movs	r3, #1
 8001860:	e06f      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 8001862:	4b3b      	ldr	r3, [pc, #236]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001864:	681b      	ldr	r3, [r3, #0]
 8001866:	f003 0302 	and.w	r3, r3, #2
 800186a:	2b00      	cmp	r3, #0
 800186c:	d101      	bne.n	8001872 <HAL_RCC_ClockConfig+0xde>
 800186e:	2301      	movs	r3, #1
 8001870:	e067      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 8001872:	4b37      	ldr	r3, [pc, #220]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001874:	689b      	ldr	r3, [r3, #8]
 8001876:	f023 0203 	bic.w	r2, r3, #3
 800187a:	687b      	ldr	r3, [r7, #4]
 800187c:	685b      	ldr	r3, [r3, #4]
 800187e:	4934      	ldr	r1, [pc, #208]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001880:	4313      	orrs	r3, r2
 8001882:	608b      	str	r3, [r1, #8]
 8001884:	f7ff fa52 	bl	8000d2c <HAL_GetTick>
 8001888:	60f8      	str	r0, [r7, #12]
 800188a:	e00a      	b.n	80018a2 <HAL_RCC_ClockConfig+0x10e>
 800188c:	f7ff fa4e 	bl	8000d2c <HAL_GetTick>
 8001890:	4602      	mov	r2, r0
 8001892:	68fb      	ldr	r3, [r7, #12]
 8001894:	1ad3      	subs	r3, r2, r3
 8001896:	f241 3288 	movw	r2, #5000	@ 0x1388
 800189a:	4293      	cmp	r3, r2
 800189c:	d901      	bls.n	80018a2 <HAL_RCC_ClockConfig+0x10e>
 800189e:	2303      	movs	r3, #3
 80018a0:	e04f      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 80018a2:	4b2b      	ldr	r3, [pc, #172]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 80018a4:	689b      	ldr	r3, [r3, #8]
 80018a6:	f003 020c 	and.w	r2, r3, #12
 80018aa:	687b      	ldr	r3, [r7, #4]
 80018ac:	685b      	ldr	r3, [r3, #4]
 80018ae:	009b      	lsls	r3, r3, #2
 80018b0:	429a      	cmp	r2, r3
 80018b2:	d1eb      	bne.n	800188c <HAL_RCC_ClockConfig+0xf8>
 80018b4:	4b25      	ldr	r3, [pc, #148]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80018b6:	681b      	ldr	r3, [r3, #0]
 80018b8:	f003 0307 	and.w	r3, r3, #7
 80018bc:	683a      	ldr	r2, [r7, #0]
 80018be:	429a      	cmp	r2, r3
 80018c0:	d20c      	bcs.n	80018dc <HAL_RCC_ClockConfig+0x148>
 80018c2:	4b22      	ldr	r3, [pc, #136]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80018c4:	683a      	ldr	r2, [r7, #0]
 80018c6:	b2d2      	uxtb	r2, r2
 80018c8:	701a      	strb	r2, [r3, #0]
 80018ca:	4b20      	ldr	r3, [pc, #128]	@ (800194c <HAL_RCC_ClockConfig+0x1b8>)
 80018cc:	681b      	ldr	r3, [r3, #0]
 80018ce:	f003 0307 	and.w	r3, r3, #7
 80018d2:	683a      	ldr	r2, [r7, #0]
 80018d4:	429a      	cmp	r2, r3
 80018d6:	d001      	beq.n	80018dc <HAL_RCC_ClockConfig+0x148>
 80018d8:	2301      	movs	r3, #1
 80018da:	e032      	b.n	8001942 <HAL_RCC_ClockConfig+0x1ae>
 80018dc:	687b      	ldr	r3, [r7, #4]
 80018de:	681b      	ldr	r3, [r3, #0]
 80018e0:	f003 0304 	and.w	r3, r3, #4
 80018e4:	2b00      	cmp	r3, #0
 80018e6:	d008      	beq.n	80018fa <HAL_RCC_ClockConfig+0x166>
 80018e8:	4b19      	ldr	r3, [pc, #100]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 80018ea:	689b      	ldr	r3, [r3, #8]
 80018ec:	f423 52e0 	bic.w	r2, r3, #7168	@ 0x1c00
 80018f0:	687b      	ldr	r3, [r7, #4]
 80018f2:	68db      	ldr	r3, [r3, #12]
 80018f4:	4916      	ldr	r1, [pc, #88]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 80018f6:	4313      	orrs	r3, r2
 80018f8:	608b      	str	r3, [r1, #8]
 80018fa:	687b      	ldr	r3, [r7, #4]
 80018fc:	681b      	ldr	r3, [r3, #0]
 80018fe:	f003 0308 	and.w	r3, r3, #8
 8001902:	2b00      	cmp	r3, #0
 8001904:	d009      	beq.n	800191a <HAL_RCC_ClockConfig+0x186>
 8001906:	4b12      	ldr	r3, [pc, #72]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001908:	689b      	ldr	r3, [r3, #8]
 800190a:	f423 4260 	bic.w	r2, r3, #57344	@ 0xe000
 800190e:	687b      	ldr	r3, [r7, #4]
 8001910:	691b      	ldr	r3, [r3, #16]
 8001912:	00db      	lsls	r3, r3, #3
 8001914:	490e      	ldr	r1, [pc, #56]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001916:	4313      	orrs	r3, r2
 8001918:	608b      	str	r3, [r1, #8]
 800191a:	f000 f821 	bl	8001960 <HAL_RCC_GetSysClockFreq>
 800191e:	4602      	mov	r2, r0
 8001920:	4b0b      	ldr	r3, [pc, #44]	@ (8001950 <HAL_RCC_ClockConfig+0x1bc>)
 8001922:	689b      	ldr	r3, [r3, #8]
 8001924:	091b      	lsrs	r3, r3, #4
 8001926:	f003 030f 	and.w	r3, r3, #15
 800192a:	490a      	ldr	r1, [pc, #40]	@ (8001954 <HAL_RCC_ClockConfig+0x1c0>)
 800192c:	5ccb      	ldrb	r3, [r1, r3]
 800192e:	fa22 f303 	lsr.w	r3, r2, r3
 8001932:	4a09      	ldr	r2, [pc, #36]	@ (8001958 <HAL_RCC_ClockConfig+0x1c4>)
 8001934:	6013      	str	r3, [r2, #0]
 8001936:	4b09      	ldr	r3, [pc, #36]	@ (800195c <HAL_RCC_ClockConfig+0x1c8>)
 8001938:	681b      	ldr	r3, [r3, #0]
 800193a:	4618      	mov	r0, r3
 800193c:	f7ff f9b2 	bl	8000ca4 <HAL_InitTick>
 8001940:	2300      	movs	r3, #0
 8001942:	4618      	mov	r0, r3
 8001944:	3710      	adds	r7, #16
 8001946:	46bd      	mov	sp, r7
 8001948:	bd80      	pop	{r7, pc}
 800194a:	bf00      	nop
 800194c:	40023c00 	.word	0x40023c00
 8001950:	40023800 	.word	0x40023800
 8001954:	08002450 	.word	0x08002450
 8001958:	20000000 	.word	0x20000000
 800195c:	20000064 	.word	0x20000064

08001960 <HAL_RCC_GetSysClockFreq>:
 8001960:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8001964:	b094      	sub	sp, #80	@ 0x50
 8001966:	af00      	add	r7, sp, #0
 8001968:	2300      	movs	r3, #0
 800196a:	647b      	str	r3, [r7, #68]	@ 0x44
 800196c:	2300      	movs	r3, #0
 800196e:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8001970:	2300      	movs	r3, #0
 8001972:	643b      	str	r3, [r7, #64]	@ 0x40
 8001974:	2300      	movs	r3, #0
 8001976:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001978:	4b79      	ldr	r3, [pc, #484]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 800197a:	689b      	ldr	r3, [r3, #8]
 800197c:	f003 030c 	and.w	r3, r3, #12
 8001980:	2b08      	cmp	r3, #8
 8001982:	d00d      	beq.n	80019a0 <HAL_RCC_GetSysClockFreq+0x40>
 8001984:	2b08      	cmp	r3, #8
 8001986:	f200 80e1 	bhi.w	8001b4c <HAL_RCC_GetSysClockFreq+0x1ec>
 800198a:	2b00      	cmp	r3, #0
 800198c:	d002      	beq.n	8001994 <HAL_RCC_GetSysClockFreq+0x34>
 800198e:	2b04      	cmp	r3, #4
 8001990:	d003      	beq.n	800199a <HAL_RCC_GetSysClockFreq+0x3a>
 8001992:	e0db      	b.n	8001b4c <HAL_RCC_GetSysClockFreq+0x1ec>
 8001994:	4b73      	ldr	r3, [pc, #460]	@ (8001b64 <HAL_RCC_GetSysClockFreq+0x204>)
 8001996:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001998:	e0db      	b.n	8001b52 <HAL_RCC_GetSysClockFreq+0x1f2>
 800199a:	4b73      	ldr	r3, [pc, #460]	@ (8001b68 <HAL_RCC_GetSysClockFreq+0x208>)
 800199c:	64bb      	str	r3, [r7, #72]	@ 0x48
 800199e:	e0d8      	b.n	8001b52 <HAL_RCC_GetSysClockFreq+0x1f2>
 80019a0:	4b6f      	ldr	r3, [pc, #444]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 80019a2:	685b      	ldr	r3, [r3, #4]
 80019a4:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 80019a8:	647b      	str	r3, [r7, #68]	@ 0x44
 80019aa:	4b6d      	ldr	r3, [pc, #436]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 80019ac:	685b      	ldr	r3, [r3, #4]
 80019ae:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 80019b2:	2b00      	cmp	r3, #0
 80019b4:	d063      	beq.n	8001a7e <HAL_RCC_GetSysClockFreq+0x11e>
 80019b6:	4b6a      	ldr	r3, [pc, #424]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 80019b8:	685b      	ldr	r3, [r3, #4]
 80019ba:	099b      	lsrs	r3, r3, #6
 80019bc:	2200      	movs	r2, #0
 80019be:	63bb      	str	r3, [r7, #56]	@ 0x38
 80019c0:	63fa      	str	r2, [r7, #60]	@ 0x3c
 80019c2:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 80019c4:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80019c8:	633b      	str	r3, [r7, #48]	@ 0x30
 80019ca:	2300      	movs	r3, #0
 80019cc:	637b      	str	r3, [r7, #52]	@ 0x34
 80019ce:	e9d7 450c 	ldrd	r4, r5, [r7, #48]	@ 0x30
 80019d2:	4622      	mov	r2, r4
 80019d4:	462b      	mov	r3, r5
 80019d6:	f04f 0000 	mov.w	r0, #0
 80019da:	f04f 0100 	mov.w	r1, #0
 80019de:	0159      	lsls	r1, r3, #5
 80019e0:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 80019e4:	0150      	lsls	r0, r2, #5
 80019e6:	4602      	mov	r2, r0
 80019e8:	460b      	mov	r3, r1
 80019ea:	4621      	mov	r1, r4
 80019ec:	1a51      	subs	r1, r2, r1
 80019ee:	6139      	str	r1, [r7, #16]
 80019f0:	4629      	mov	r1, r5
 80019f2:	eb63 0301 	sbc.w	r3, r3, r1
 80019f6:	617b      	str	r3, [r7, #20]
 80019f8:	f04f 0200 	mov.w	r2, #0
 80019fc:	f04f 0300 	mov.w	r3, #0
 8001a00:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 8001a04:	4659      	mov	r1, fp
 8001a06:	018b      	lsls	r3, r1, #6
 8001a08:	4651      	mov	r1, sl
 8001a0a:	ea43 6391 	orr.w	r3, r3, r1, lsr #26
 8001a0e:	4651      	mov	r1, sl
 8001a10:	018a      	lsls	r2, r1, #6
 8001a12:	4651      	mov	r1, sl
 8001a14:	ebb2 0801 	subs.w	r8, r2, r1
 8001a18:	4659      	mov	r1, fp
 8001a1a:	eb63 0901 	sbc.w	r9, r3, r1
 8001a1e:	f04f 0200 	mov.w	r2, #0
 8001a22:	f04f 0300 	mov.w	r3, #0
 8001a26:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8001a2a:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 8001a2e:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 8001a32:	4690      	mov	r8, r2
 8001a34:	4699      	mov	r9, r3
 8001a36:	4623      	mov	r3, r4
 8001a38:	eb18 0303 	adds.w	r3, r8, r3
 8001a3c:	60bb      	str	r3, [r7, #8]
 8001a3e:	462b      	mov	r3, r5
 8001a40:	eb49 0303 	adc.w	r3, r9, r3
 8001a44:	60fb      	str	r3, [r7, #12]
 8001a46:	f04f 0200 	mov.w	r2, #0
 8001a4a:	f04f 0300 	mov.w	r3, #0
 8001a4e:	e9d7 4502 	ldrd	r4, r5, [r7, #8]
 8001a52:	4629      	mov	r1, r5
 8001a54:	024b      	lsls	r3, r1, #9
 8001a56:	4621      	mov	r1, r4
 8001a58:	ea43 53d1 	orr.w	r3, r3, r1, lsr #23
 8001a5c:	4621      	mov	r1, r4
 8001a5e:	024a      	lsls	r2, r1, #9
 8001a60:	4610      	mov	r0, r2
 8001a62:	4619      	mov	r1, r3
 8001a64:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8001a66:	2200      	movs	r2, #0
 8001a68:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001a6a:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8001a6c:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 8001a70:	f7fe fbb2 	bl	80001d8 <__aeabi_uldivmod>
 8001a74:	4602      	mov	r2, r0
 8001a76:	460b      	mov	r3, r1
 8001a78:	4613      	mov	r3, r2
 8001a7a:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8001a7c:	e058      	b.n	8001b30 <HAL_RCC_GetSysClockFreq+0x1d0>
 8001a7e:	4b38      	ldr	r3, [pc, #224]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 8001a80:	685b      	ldr	r3, [r3, #4]
 8001a82:	099b      	lsrs	r3, r3, #6
 8001a84:	2200      	movs	r2, #0
 8001a86:	4618      	mov	r0, r3
 8001a88:	4611      	mov	r1, r2
 8001a8a:	f3c0 0308 	ubfx	r3, r0, #0, #9
 8001a8e:	623b      	str	r3, [r7, #32]
 8001a90:	2300      	movs	r3, #0
 8001a92:	627b      	str	r3, [r7, #36]	@ 0x24
 8001a94:	e9d7 8908 	ldrd	r8, r9, [r7, #32]
 8001a98:	4642      	mov	r2, r8
 8001a9a:	464b      	mov	r3, r9
 8001a9c:	f04f 0000 	mov.w	r0, #0
 8001aa0:	f04f 0100 	mov.w	r1, #0
 8001aa4:	0159      	lsls	r1, r3, #5
 8001aa6:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8001aaa:	0150      	lsls	r0, r2, #5
 8001aac:	4602      	mov	r2, r0
 8001aae:	460b      	mov	r3, r1
 8001ab0:	4641      	mov	r1, r8
 8001ab2:	ebb2 0a01 	subs.w	sl, r2, r1
 8001ab6:	4649      	mov	r1, r9
 8001ab8:	eb63 0b01 	sbc.w	fp, r3, r1
 8001abc:	f04f 0200 	mov.w	r2, #0
 8001ac0:	f04f 0300 	mov.w	r3, #0
 8001ac4:	ea4f 138b 	mov.w	r3, fp, lsl #6
 8001ac8:	ea43 639a 	orr.w	r3, r3, sl, lsr #26
 8001acc:	ea4f 128a 	mov.w	r2, sl, lsl #6
 8001ad0:	ebb2 040a 	subs.w	r4, r2, sl
 8001ad4:	eb63 050b 	sbc.w	r5, r3, fp
 8001ad8:	f04f 0200 	mov.w	r2, #0
 8001adc:	f04f 0300 	mov.w	r3, #0
 8001ae0:	00eb      	lsls	r3, r5, #3
 8001ae2:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 8001ae6:	00e2      	lsls	r2, r4, #3
 8001ae8:	4614      	mov	r4, r2
 8001aea:	461d      	mov	r5, r3
 8001aec:	4643      	mov	r3, r8
 8001aee:	18e3      	adds	r3, r4, r3
 8001af0:	603b      	str	r3, [r7, #0]
 8001af2:	464b      	mov	r3, r9
 8001af4:	eb45 0303 	adc.w	r3, r5, r3
 8001af8:	607b      	str	r3, [r7, #4]
 8001afa:	f04f 0200 	mov.w	r2, #0
 8001afe:	f04f 0300 	mov.w	r3, #0
 8001b02:	e9d7 4500 	ldrd	r4, r5, [r7]
 8001b06:	4629      	mov	r1, r5
 8001b08:	028b      	lsls	r3, r1, #10
 8001b0a:	4621      	mov	r1, r4
 8001b0c:	ea43 5391 	orr.w	r3, r3, r1, lsr #22
 8001b10:	4621      	mov	r1, r4
 8001b12:	028a      	lsls	r2, r1, #10
 8001b14:	4610      	mov	r0, r2
 8001b16:	4619      	mov	r1, r3
 8001b18:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 8001b1a:	2200      	movs	r2, #0
 8001b1c:	61bb      	str	r3, [r7, #24]
 8001b1e:	61fa      	str	r2, [r7, #28]
 8001b20:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 8001b24:	f7fe fb58 	bl	80001d8 <__aeabi_uldivmod>
 8001b28:	4602      	mov	r2, r0
 8001b2a:	460b      	mov	r3, r1
 8001b2c:	4613      	mov	r3, r2
 8001b2e:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8001b30:	4b0b      	ldr	r3, [pc, #44]	@ (8001b60 <HAL_RCC_GetSysClockFreq+0x200>)
 8001b32:	685b      	ldr	r3, [r3, #4]
 8001b34:	0c1b      	lsrs	r3, r3, #16
 8001b36:	f003 0303 	and.w	r3, r3, #3
 8001b3a:	3301      	adds	r3, #1
 8001b3c:	005b      	lsls	r3, r3, #1
 8001b3e:	643b      	str	r3, [r7, #64]	@ 0x40
 8001b40:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 8001b42:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 8001b44:	fbb2 f3f3 	udiv	r3, r2, r3
 8001b48:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001b4a:	e002      	b.n	8001b52 <HAL_RCC_GetSysClockFreq+0x1f2>
 8001b4c:	4b05      	ldr	r3, [pc, #20]	@ (8001b64 <HAL_RCC_GetSysClockFreq+0x204>)
 8001b4e:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001b50:	bf00      	nop
 8001b52:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 8001b54:	4618      	mov	r0, r3
 8001b56:	3750      	adds	r7, #80	@ 0x50
 8001b58:	46bd      	mov	sp, r7
 8001b5a:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 8001b5e:	bf00      	nop
 8001b60:	40023800 	.word	0x40023800
 8001b64:	00f42400 	.word	0x00f42400
 8001b68:	007a1200 	.word	0x007a1200

08001b6c <HAL_TIM_Base_Init>:
 8001b6c:	b580      	push	{r7, lr}
 8001b6e:	b082      	sub	sp, #8
 8001b70:	af00      	add	r7, sp, #0
 8001b72:	6078      	str	r0, [r7, #4]
 8001b74:	687b      	ldr	r3, [r7, #4]
 8001b76:	2b00      	cmp	r3, #0
 8001b78:	d101      	bne.n	8001b7e <HAL_TIM_Base_Init+0x12>
 8001b7a:	2301      	movs	r3, #1
 8001b7c:	e041      	b.n	8001c02 <HAL_TIM_Base_Init+0x96>
 8001b7e:	687b      	ldr	r3, [r7, #4]
 8001b80:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8001b84:	b2db      	uxtb	r3, r3
 8001b86:	2b00      	cmp	r3, #0
 8001b88:	d106      	bne.n	8001b98 <HAL_TIM_Base_Init+0x2c>
 8001b8a:	687b      	ldr	r3, [r7, #4]
 8001b8c:	2200      	movs	r2, #0
 8001b8e:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8001b92:	6878      	ldr	r0, [r7, #4]
 8001b94:	f7fe fe9c 	bl	80008d0 <HAL_TIM_Base_MspInit>
 8001b98:	687b      	ldr	r3, [r7, #4]
 8001b9a:	2202      	movs	r2, #2
 8001b9c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8001ba0:	687b      	ldr	r3, [r7, #4]
 8001ba2:	681a      	ldr	r2, [r3, #0]
 8001ba4:	687b      	ldr	r3, [r7, #4]
 8001ba6:	3304      	adds	r3, #4
 8001ba8:	4619      	mov	r1, r3
 8001baa:	4610      	mov	r0, r2
 8001bac:	f000 fa70 	bl	8002090 <TIM_Base_SetConfig>
 8001bb0:	687b      	ldr	r3, [r7, #4]
 8001bb2:	2201      	movs	r2, #1
 8001bb4:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 8001bb8:	687b      	ldr	r3, [r7, #4]
 8001bba:	2201      	movs	r2, #1
 8001bbc:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8001bc0:	687b      	ldr	r3, [r7, #4]
 8001bc2:	2201      	movs	r2, #1
 8001bc4:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 8001bc8:	687b      	ldr	r3, [r7, #4]
 8001bca:	2201      	movs	r2, #1
 8001bcc:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8001bd0:	687b      	ldr	r3, [r7, #4]
 8001bd2:	2201      	movs	r2, #1
 8001bd4:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8001bd8:	687b      	ldr	r3, [r7, #4]
 8001bda:	2201      	movs	r2, #1
 8001bdc:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8001be0:	687b      	ldr	r3, [r7, #4]
 8001be2:	2201      	movs	r2, #1
 8001be4:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 8001be8:	687b      	ldr	r3, [r7, #4]
 8001bea:	2201      	movs	r2, #1
 8001bec:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8001bf0:	687b      	ldr	r3, [r7, #4]
 8001bf2:	2201      	movs	r2, #1
 8001bf4:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8001bf8:	687b      	ldr	r3, [r7, #4]
 8001bfa:	2201      	movs	r2, #1
 8001bfc:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8001c00:	2300      	movs	r3, #0
 8001c02:	4618      	mov	r0, r3
 8001c04:	3708      	adds	r7, #8
 8001c06:	46bd      	mov	sp, r7
 8001c08:	bd80      	pop	{r7, pc}
	...

08001c0c <HAL_TIM_Base_Start_IT>:
 8001c0c:	b480      	push	{r7}
 8001c0e:	b085      	sub	sp, #20
 8001c10:	af00      	add	r7, sp, #0
 8001c12:	6078      	str	r0, [r7, #4]
 8001c14:	687b      	ldr	r3, [r7, #4]
 8001c16:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8001c1a:	b2db      	uxtb	r3, r3
 8001c1c:	2b01      	cmp	r3, #1
 8001c1e:	d001      	beq.n	8001c24 <HAL_TIM_Base_Start_IT+0x18>
 8001c20:	2301      	movs	r3, #1
 8001c22:	e044      	b.n	8001cae <HAL_TIM_Base_Start_IT+0xa2>
 8001c24:	687b      	ldr	r3, [r7, #4]
 8001c26:	2202      	movs	r2, #2
 8001c28:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8001c2c:	687b      	ldr	r3, [r7, #4]
 8001c2e:	681b      	ldr	r3, [r3, #0]
 8001c30:	68da      	ldr	r2, [r3, #12]
 8001c32:	687b      	ldr	r3, [r7, #4]
 8001c34:	681b      	ldr	r3, [r3, #0]
 8001c36:	f042 0201 	orr.w	r2, r2, #1
 8001c3a:	60da      	str	r2, [r3, #12]
 8001c3c:	687b      	ldr	r3, [r7, #4]
 8001c3e:	681b      	ldr	r3, [r3, #0]
 8001c40:	4a1e      	ldr	r2, [pc, #120]	@ (8001cbc <HAL_TIM_Base_Start_IT+0xb0>)
 8001c42:	4293      	cmp	r3, r2
 8001c44:	d018      	beq.n	8001c78 <HAL_TIM_Base_Start_IT+0x6c>
 8001c46:	687b      	ldr	r3, [r7, #4]
 8001c48:	681b      	ldr	r3, [r3, #0]
 8001c4a:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8001c4e:	d013      	beq.n	8001c78 <HAL_TIM_Base_Start_IT+0x6c>
 8001c50:	687b      	ldr	r3, [r7, #4]
 8001c52:	681b      	ldr	r3, [r3, #0]
 8001c54:	4a1a      	ldr	r2, [pc, #104]	@ (8001cc0 <HAL_TIM_Base_Start_IT+0xb4>)
 8001c56:	4293      	cmp	r3, r2
 8001c58:	d00e      	beq.n	8001c78 <HAL_TIM_Base_Start_IT+0x6c>
 8001c5a:	687b      	ldr	r3, [r7, #4]
 8001c5c:	681b      	ldr	r3, [r3, #0]
 8001c5e:	4a19      	ldr	r2, [pc, #100]	@ (8001cc4 <HAL_TIM_Base_Start_IT+0xb8>)
 8001c60:	4293      	cmp	r3, r2
 8001c62:	d009      	beq.n	8001c78 <HAL_TIM_Base_Start_IT+0x6c>
 8001c64:	687b      	ldr	r3, [r7, #4]
 8001c66:	681b      	ldr	r3, [r3, #0]
 8001c68:	4a17      	ldr	r2, [pc, #92]	@ (8001cc8 <HAL_TIM_Base_Start_IT+0xbc>)
 8001c6a:	4293      	cmp	r3, r2
 8001c6c:	d004      	beq.n	8001c78 <HAL_TIM_Base_Start_IT+0x6c>
 8001c6e:	687b      	ldr	r3, [r7, #4]
 8001c70:	681b      	ldr	r3, [r3, #0]
 8001c72:	4a16      	ldr	r2, [pc, #88]	@ (8001ccc <HAL_TIM_Base_Start_IT+0xc0>)
 8001c74:	4293      	cmp	r3, r2
 8001c76:	d111      	bne.n	8001c9c <HAL_TIM_Base_Start_IT+0x90>
 8001c78:	687b      	ldr	r3, [r7, #4]
 8001c7a:	681b      	ldr	r3, [r3, #0]
 8001c7c:	689b      	ldr	r3, [r3, #8]
 8001c7e:	f003 0307 	and.w	r3, r3, #7
 8001c82:	60fb      	str	r3, [r7, #12]
 8001c84:	68fb      	ldr	r3, [r7, #12]
 8001c86:	2b06      	cmp	r3, #6
 8001c88:	d010      	beq.n	8001cac <HAL_TIM_Base_Start_IT+0xa0>
 8001c8a:	687b      	ldr	r3, [r7, #4]
 8001c8c:	681b      	ldr	r3, [r3, #0]
 8001c8e:	681a      	ldr	r2, [r3, #0]
 8001c90:	687b      	ldr	r3, [r7, #4]
 8001c92:	681b      	ldr	r3, [r3, #0]
 8001c94:	f042 0201 	orr.w	r2, r2, #1
 8001c98:	601a      	str	r2, [r3, #0]
 8001c9a:	e007      	b.n	8001cac <HAL_TIM_Base_Start_IT+0xa0>
 8001c9c:	687b      	ldr	r3, [r7, #4]
 8001c9e:	681b      	ldr	r3, [r3, #0]
 8001ca0:	681a      	ldr	r2, [r3, #0]
 8001ca2:	687b      	ldr	r3, [r7, #4]
 8001ca4:	681b      	ldr	r3, [r3, #0]
 8001ca6:	f042 0201 	orr.w	r2, r2, #1
 8001caa:	601a      	str	r2, [r3, #0]
 8001cac:	2300      	movs	r3, #0
 8001cae:	4618      	mov	r0, r3
 8001cb0:	3714      	adds	r7, #20
 8001cb2:	46bd      	mov	sp, r7
 8001cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001cb8:	4770      	bx	lr
 8001cba:	bf00      	nop
 8001cbc:	40010000 	.word	0x40010000
 8001cc0:	40000400 	.word	0x40000400
 8001cc4:	40000800 	.word	0x40000800
 8001cc8:	40000c00 	.word	0x40000c00
 8001ccc:	40014000 	.word	0x40014000

08001cd0 <HAL_TIM_IRQHandler>:
 8001cd0:	b580      	push	{r7, lr}
 8001cd2:	b084      	sub	sp, #16
 8001cd4:	af00      	add	r7, sp, #0
 8001cd6:	6078      	str	r0, [r7, #4]
 8001cd8:	687b      	ldr	r3, [r7, #4]
 8001cda:	681b      	ldr	r3, [r3, #0]
 8001cdc:	68db      	ldr	r3, [r3, #12]
 8001cde:	60fb      	str	r3, [r7, #12]
 8001ce0:	687b      	ldr	r3, [r7, #4]
 8001ce2:	681b      	ldr	r3, [r3, #0]
 8001ce4:	691b      	ldr	r3, [r3, #16]
 8001ce6:	60bb      	str	r3, [r7, #8]
 8001ce8:	68bb      	ldr	r3, [r7, #8]
 8001cea:	f003 0302 	and.w	r3, r3, #2
 8001cee:	2b00      	cmp	r3, #0
 8001cf0:	d020      	beq.n	8001d34 <HAL_TIM_IRQHandler+0x64>
 8001cf2:	68fb      	ldr	r3, [r7, #12]
 8001cf4:	f003 0302 	and.w	r3, r3, #2
 8001cf8:	2b00      	cmp	r3, #0
 8001cfa:	d01b      	beq.n	8001d34 <HAL_TIM_IRQHandler+0x64>
 8001cfc:	687b      	ldr	r3, [r7, #4]
 8001cfe:	681b      	ldr	r3, [r3, #0]
 8001d00:	f06f 0202 	mvn.w	r2, #2
 8001d04:	611a      	str	r2, [r3, #16]
 8001d06:	687b      	ldr	r3, [r7, #4]
 8001d08:	2201      	movs	r2, #1
 8001d0a:	771a      	strb	r2, [r3, #28]
 8001d0c:	687b      	ldr	r3, [r7, #4]
 8001d0e:	681b      	ldr	r3, [r3, #0]
 8001d10:	699b      	ldr	r3, [r3, #24]
 8001d12:	f003 0303 	and.w	r3, r3, #3
 8001d16:	2b00      	cmp	r3, #0
 8001d18:	d003      	beq.n	8001d22 <HAL_TIM_IRQHandler+0x52>
 8001d1a:	6878      	ldr	r0, [r7, #4]
 8001d1c:	f000 f999 	bl	8002052 <HAL_TIM_IC_CaptureCallback>
 8001d20:	e005      	b.n	8001d2e <HAL_TIM_IRQHandler+0x5e>
 8001d22:	6878      	ldr	r0, [r7, #4]
 8001d24:	f000 f98b 	bl	800203e <HAL_TIM_OC_DelayElapsedCallback>
 8001d28:	6878      	ldr	r0, [r7, #4]
 8001d2a:	f000 f99c 	bl	8002066 <HAL_TIM_PWM_PulseFinishedCallback>
 8001d2e:	687b      	ldr	r3, [r7, #4]
 8001d30:	2200      	movs	r2, #0
 8001d32:	771a      	strb	r2, [r3, #28]
 8001d34:	68bb      	ldr	r3, [r7, #8]
 8001d36:	f003 0304 	and.w	r3, r3, #4
 8001d3a:	2b00      	cmp	r3, #0
 8001d3c:	d020      	beq.n	8001d80 <HAL_TIM_IRQHandler+0xb0>
 8001d3e:	68fb      	ldr	r3, [r7, #12]
 8001d40:	f003 0304 	and.w	r3, r3, #4
 8001d44:	2b00      	cmp	r3, #0
 8001d46:	d01b      	beq.n	8001d80 <HAL_TIM_IRQHandler+0xb0>
 8001d48:	687b      	ldr	r3, [r7, #4]
 8001d4a:	681b      	ldr	r3, [r3, #0]
 8001d4c:	f06f 0204 	mvn.w	r2, #4
 8001d50:	611a      	str	r2, [r3, #16]
 8001d52:	687b      	ldr	r3, [r7, #4]
 8001d54:	2202      	movs	r2, #2
 8001d56:	771a      	strb	r2, [r3, #28]
 8001d58:	687b      	ldr	r3, [r7, #4]
 8001d5a:	681b      	ldr	r3, [r3, #0]
 8001d5c:	699b      	ldr	r3, [r3, #24]
 8001d5e:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8001d62:	2b00      	cmp	r3, #0
 8001d64:	d003      	beq.n	8001d6e <HAL_TIM_IRQHandler+0x9e>
 8001d66:	6878      	ldr	r0, [r7, #4]
 8001d68:	f000 f973 	bl	8002052 <HAL_TIM_IC_CaptureCallback>
 8001d6c:	e005      	b.n	8001d7a <HAL_TIM_IRQHandler+0xaa>
 8001d6e:	6878      	ldr	r0, [r7, #4]
 8001d70:	f000 f965 	bl	800203e <HAL_TIM_OC_DelayElapsedCallback>
 8001d74:	6878      	ldr	r0, [r7, #4]
 8001d76:	f000 f976 	bl	8002066 <HAL_TIM_PWM_PulseFinishedCallback>
 8001d7a:	687b      	ldr	r3, [r7, #4]
 8001d7c:	2200      	movs	r2, #0
 8001d7e:	771a      	strb	r2, [r3, #28]
 8001d80:	68bb      	ldr	r3, [r7, #8]
 8001d82:	f003 0308 	and.w	r3, r3, #8
 8001d86:	2b00      	cmp	r3, #0
 8001d88:	d020      	beq.n	8001dcc <HAL_TIM_IRQHandler+0xfc>
 8001d8a:	68fb      	ldr	r3, [r7, #12]
 8001d8c:	f003 0308 	and.w	r3, r3, #8
 8001d90:	2b00      	cmp	r3, #0
 8001d92:	d01b      	beq.n	8001dcc <HAL_TIM_IRQHandler+0xfc>
 8001d94:	687b      	ldr	r3, [r7, #4]
 8001d96:	681b      	ldr	r3, [r3, #0]
 8001d98:	f06f 0208 	mvn.w	r2, #8
 8001d9c:	611a      	str	r2, [r3, #16]
 8001d9e:	687b      	ldr	r3, [r7, #4]
 8001da0:	2204      	movs	r2, #4
 8001da2:	771a      	strb	r2, [r3, #28]
 8001da4:	687b      	ldr	r3, [r7, #4]
 8001da6:	681b      	ldr	r3, [r3, #0]
 8001da8:	69db      	ldr	r3, [r3, #28]
 8001daa:	f003 0303 	and.w	r3, r3, #3
 8001dae:	2b00      	cmp	r3, #0
 8001db0:	d003      	beq.n	8001dba <HAL_TIM_IRQHandler+0xea>
 8001db2:	6878      	ldr	r0, [r7, #4]
 8001db4:	f000 f94d 	bl	8002052 <HAL_TIM_IC_CaptureCallback>
 8001db8:	e005      	b.n	8001dc6 <HAL_TIM_IRQHandler+0xf6>
 8001dba:	6878      	ldr	r0, [r7, #4]
 8001dbc:	f000 f93f 	bl	800203e <HAL_TIM_OC_DelayElapsedCallback>
 8001dc0:	6878      	ldr	r0, [r7, #4]
 8001dc2:	f000 f950 	bl	8002066 <HAL_TIM_PWM_PulseFinishedCallback>
 8001dc6:	687b      	ldr	r3, [r7, #4]
 8001dc8:	2200      	movs	r2, #0
 8001dca:	771a      	strb	r2, [r3, #28]
 8001dcc:	68bb      	ldr	r3, [r7, #8]
 8001dce:	f003 0310 	and.w	r3, r3, #16
 8001dd2:	2b00      	cmp	r3, #0
 8001dd4:	d020      	beq.n	8001e18 <HAL_TIM_IRQHandler+0x148>
 8001dd6:	68fb      	ldr	r3, [r7, #12]
 8001dd8:	f003 0310 	and.w	r3, r3, #16
 8001ddc:	2b00      	cmp	r3, #0
 8001dde:	d01b      	beq.n	8001e18 <HAL_TIM_IRQHandler+0x148>
 8001de0:	687b      	ldr	r3, [r7, #4]
 8001de2:	681b      	ldr	r3, [r3, #0]
 8001de4:	f06f 0210 	mvn.w	r2, #16
 8001de8:	611a      	str	r2, [r3, #16]
 8001dea:	687b      	ldr	r3, [r7, #4]
 8001dec:	2208      	movs	r2, #8
 8001dee:	771a      	strb	r2, [r3, #28]
 8001df0:	687b      	ldr	r3, [r7, #4]
 8001df2:	681b      	ldr	r3, [r3, #0]
 8001df4:	69db      	ldr	r3, [r3, #28]
 8001df6:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8001dfa:	2b00      	cmp	r3, #0
 8001dfc:	d003      	beq.n	8001e06 <HAL_TIM_IRQHandler+0x136>
 8001dfe:	6878      	ldr	r0, [r7, #4]
 8001e00:	f000 f927 	bl	8002052 <HAL_TIM_IC_CaptureCallback>
 8001e04:	e005      	b.n	8001e12 <HAL_TIM_IRQHandler+0x142>
 8001e06:	6878      	ldr	r0, [r7, #4]
 8001e08:	f000 f919 	bl	800203e <HAL_TIM_OC_DelayElapsedCallback>
 8001e0c:	6878      	ldr	r0, [r7, #4]
 8001e0e:	f000 f92a 	bl	8002066 <HAL_TIM_PWM_PulseFinishedCallback>
 8001e12:	687b      	ldr	r3, [r7, #4]
 8001e14:	2200      	movs	r2, #0
 8001e16:	771a      	strb	r2, [r3, #28]
 8001e18:	68bb      	ldr	r3, [r7, #8]
 8001e1a:	f003 0301 	and.w	r3, r3, #1
 8001e1e:	2b00      	cmp	r3, #0
 8001e20:	d00c      	beq.n	8001e3c <HAL_TIM_IRQHandler+0x16c>
 8001e22:	68fb      	ldr	r3, [r7, #12]
 8001e24:	f003 0301 	and.w	r3, r3, #1
 8001e28:	2b00      	cmp	r3, #0
 8001e2a:	d007      	beq.n	8001e3c <HAL_TIM_IRQHandler+0x16c>
 8001e2c:	687b      	ldr	r3, [r7, #4]
 8001e2e:	681b      	ldr	r3, [r3, #0]
 8001e30:	f06f 0201 	mvn.w	r2, #1
 8001e34:	611a      	str	r2, [r3, #16]
 8001e36:	6878      	ldr	r0, [r7, #4]
 8001e38:	f7fe fd99 	bl	800096e <HAL_TIM_PeriodElapsedCallback>
 8001e3c:	68bb      	ldr	r3, [r7, #8]
 8001e3e:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8001e42:	2b00      	cmp	r3, #0
 8001e44:	d00c      	beq.n	8001e60 <HAL_TIM_IRQHandler+0x190>
 8001e46:	68fb      	ldr	r3, [r7, #12]
 8001e48:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8001e4c:	2b00      	cmp	r3, #0
 8001e4e:	d007      	beq.n	8001e60 <HAL_TIM_IRQHandler+0x190>
 8001e50:	687b      	ldr	r3, [r7, #4]
 8001e52:	681b      	ldr	r3, [r3, #0]
 8001e54:	f06f 0280 	mvn.w	r2, #128	@ 0x80
 8001e58:	611a      	str	r2, [r3, #16]
 8001e5a:	6878      	ldr	r0, [r7, #4]
 8001e5c:	f000 fab0 	bl	80023c0 <HAL_TIMEx_BreakCallback>
 8001e60:	68bb      	ldr	r3, [r7, #8]
 8001e62:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8001e66:	2b00      	cmp	r3, #0
 8001e68:	d00c      	beq.n	8001e84 <HAL_TIM_IRQHandler+0x1b4>
 8001e6a:	68fb      	ldr	r3, [r7, #12]
 8001e6c:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8001e70:	2b00      	cmp	r3, #0
 8001e72:	d007      	beq.n	8001e84 <HAL_TIM_IRQHandler+0x1b4>
 8001e74:	687b      	ldr	r3, [r7, #4]
 8001e76:	681b      	ldr	r3, [r3, #0]
 8001e78:	f06f 0240 	mvn.w	r2, #64	@ 0x40
 8001e7c:	611a      	str	r2, [r3, #16]
 8001e7e:	6878      	ldr	r0, [r7, #4]
 8001e80:	f000 f8fb 	bl	800207a <HAL_TIM_TriggerCallback>
 8001e84:	68bb      	ldr	r3, [r7, #8]
 8001e86:	f003 0320 	and.w	r3, r3, #32
 8001e8a:	2b00      	cmp	r3, #0
 8001e8c:	d00c      	beq.n	8001ea8 <HAL_TIM_IRQHandler+0x1d8>
 8001e8e:	68fb      	ldr	r3, [r7, #12]
 8001e90:	f003 0320 	and.w	r3, r3, #32
 8001e94:	2b00      	cmp	r3, #0
 8001e96:	d007      	beq.n	8001ea8 <HAL_TIM_IRQHandler+0x1d8>
 8001e98:	687b      	ldr	r3, [r7, #4]
 8001e9a:	681b      	ldr	r3, [r3, #0]
 8001e9c:	f06f 0220 	mvn.w	r2, #32
 8001ea0:	611a      	str	r2, [r3, #16]
 8001ea2:	6878      	ldr	r0, [r7, #4]
 8001ea4:	f000 fa82 	bl	80023ac <HAL_TIMEx_CommutCallback>
 8001ea8:	bf00      	nop
 8001eaa:	3710      	adds	r7, #16
 8001eac:	46bd      	mov	sp, r7
 8001eae:	bd80      	pop	{r7, pc}

08001eb0 <HAL_TIM_ConfigClockSource>:
 8001eb0:	b580      	push	{r7, lr}
 8001eb2:	b084      	sub	sp, #16
 8001eb4:	af00      	add	r7, sp, #0
 8001eb6:	6078      	str	r0, [r7, #4]
 8001eb8:	6039      	str	r1, [r7, #0]
 8001eba:	2300      	movs	r3, #0
 8001ebc:	73fb      	strb	r3, [r7, #15]
 8001ebe:	687b      	ldr	r3, [r7, #4]
 8001ec0:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8001ec4:	2b01      	cmp	r3, #1
 8001ec6:	d101      	bne.n	8001ecc <HAL_TIM_ConfigClockSource+0x1c>
 8001ec8:	2302      	movs	r3, #2
 8001eca:	e0b4      	b.n	8002036 <HAL_TIM_ConfigClockSource+0x186>
 8001ecc:	687b      	ldr	r3, [r7, #4]
 8001ece:	2201      	movs	r2, #1
 8001ed0:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8001ed4:	687b      	ldr	r3, [r7, #4]
 8001ed6:	2202      	movs	r2, #2
 8001ed8:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8001edc:	687b      	ldr	r3, [r7, #4]
 8001ede:	681b      	ldr	r3, [r3, #0]
 8001ee0:	689b      	ldr	r3, [r3, #8]
 8001ee2:	60bb      	str	r3, [r7, #8]
 8001ee4:	68bb      	ldr	r3, [r7, #8]
 8001ee6:	f023 0377 	bic.w	r3, r3, #119	@ 0x77
 8001eea:	60bb      	str	r3, [r7, #8]
 8001eec:	68bb      	ldr	r3, [r7, #8]
 8001eee:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8001ef2:	60bb      	str	r3, [r7, #8]
 8001ef4:	687b      	ldr	r3, [r7, #4]
 8001ef6:	681b      	ldr	r3, [r3, #0]
 8001ef8:	68ba      	ldr	r2, [r7, #8]
 8001efa:	609a      	str	r2, [r3, #8]
 8001efc:	683b      	ldr	r3, [r7, #0]
 8001efe:	681b      	ldr	r3, [r3, #0]
 8001f00:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8001f04:	d03e      	beq.n	8001f84 <HAL_TIM_ConfigClockSource+0xd4>
 8001f06:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8001f0a:	f200 8087 	bhi.w	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f0e:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8001f12:	f000 8086 	beq.w	8002022 <HAL_TIM_ConfigClockSource+0x172>
 8001f16:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8001f1a:	d87f      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f1c:	2b70      	cmp	r3, #112	@ 0x70
 8001f1e:	d01a      	beq.n	8001f56 <HAL_TIM_ConfigClockSource+0xa6>
 8001f20:	2b70      	cmp	r3, #112	@ 0x70
 8001f22:	d87b      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f24:	2b60      	cmp	r3, #96	@ 0x60
 8001f26:	d050      	beq.n	8001fca <HAL_TIM_ConfigClockSource+0x11a>
 8001f28:	2b60      	cmp	r3, #96	@ 0x60
 8001f2a:	d877      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f2c:	2b50      	cmp	r3, #80	@ 0x50
 8001f2e:	d03c      	beq.n	8001faa <HAL_TIM_ConfigClockSource+0xfa>
 8001f30:	2b50      	cmp	r3, #80	@ 0x50
 8001f32:	d873      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f34:	2b40      	cmp	r3, #64	@ 0x40
 8001f36:	d058      	beq.n	8001fea <HAL_TIM_ConfigClockSource+0x13a>
 8001f38:	2b40      	cmp	r3, #64	@ 0x40
 8001f3a:	d86f      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f3c:	2b30      	cmp	r3, #48	@ 0x30
 8001f3e:	d064      	beq.n	800200a <HAL_TIM_ConfigClockSource+0x15a>
 8001f40:	2b30      	cmp	r3, #48	@ 0x30
 8001f42:	d86b      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f44:	2b20      	cmp	r3, #32
 8001f46:	d060      	beq.n	800200a <HAL_TIM_ConfigClockSource+0x15a>
 8001f48:	2b20      	cmp	r3, #32
 8001f4a:	d867      	bhi.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f4c:	2b00      	cmp	r3, #0
 8001f4e:	d05c      	beq.n	800200a <HAL_TIM_ConfigClockSource+0x15a>
 8001f50:	2b10      	cmp	r3, #16
 8001f52:	d05a      	beq.n	800200a <HAL_TIM_ConfigClockSource+0x15a>
 8001f54:	e062      	b.n	800201c <HAL_TIM_ConfigClockSource+0x16c>
 8001f56:	687b      	ldr	r3, [r7, #4]
 8001f58:	6818      	ldr	r0, [r3, #0]
 8001f5a:	683b      	ldr	r3, [r7, #0]
 8001f5c:	6899      	ldr	r1, [r3, #8]
 8001f5e:	683b      	ldr	r3, [r7, #0]
 8001f60:	685a      	ldr	r2, [r3, #4]
 8001f62:	683b      	ldr	r3, [r7, #0]
 8001f64:	68db      	ldr	r3, [r3, #12]
 8001f66:	f000 f993 	bl	8002290 <TIM_ETR_SetConfig>
 8001f6a:	687b      	ldr	r3, [r7, #4]
 8001f6c:	681b      	ldr	r3, [r3, #0]
 8001f6e:	689b      	ldr	r3, [r3, #8]
 8001f70:	60bb      	str	r3, [r7, #8]
 8001f72:	68bb      	ldr	r3, [r7, #8]
 8001f74:	f043 0377 	orr.w	r3, r3, #119	@ 0x77
 8001f78:	60bb      	str	r3, [r7, #8]
 8001f7a:	687b      	ldr	r3, [r7, #4]
 8001f7c:	681b      	ldr	r3, [r3, #0]
 8001f7e:	68ba      	ldr	r2, [r7, #8]
 8001f80:	609a      	str	r2, [r3, #8]
 8001f82:	e04f      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 8001f84:	687b      	ldr	r3, [r7, #4]
 8001f86:	6818      	ldr	r0, [r3, #0]
 8001f88:	683b      	ldr	r3, [r7, #0]
 8001f8a:	6899      	ldr	r1, [r3, #8]
 8001f8c:	683b      	ldr	r3, [r7, #0]
 8001f8e:	685a      	ldr	r2, [r3, #4]
 8001f90:	683b      	ldr	r3, [r7, #0]
 8001f92:	68db      	ldr	r3, [r3, #12]
 8001f94:	f000 f97c 	bl	8002290 <TIM_ETR_SetConfig>
 8001f98:	687b      	ldr	r3, [r7, #4]
 8001f9a:	681b      	ldr	r3, [r3, #0]
 8001f9c:	689a      	ldr	r2, [r3, #8]
 8001f9e:	687b      	ldr	r3, [r7, #4]
 8001fa0:	681b      	ldr	r3, [r3, #0]
 8001fa2:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 8001fa6:	609a      	str	r2, [r3, #8]
 8001fa8:	e03c      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 8001faa:	687b      	ldr	r3, [r7, #4]
 8001fac:	6818      	ldr	r0, [r3, #0]
 8001fae:	683b      	ldr	r3, [r7, #0]
 8001fb0:	6859      	ldr	r1, [r3, #4]
 8001fb2:	683b      	ldr	r3, [r7, #0]
 8001fb4:	68db      	ldr	r3, [r3, #12]
 8001fb6:	461a      	mov	r2, r3
 8001fb8:	f000 f8f0 	bl	800219c <TIM_TI1_ConfigInputStage>
 8001fbc:	687b      	ldr	r3, [r7, #4]
 8001fbe:	681b      	ldr	r3, [r3, #0]
 8001fc0:	2150      	movs	r1, #80	@ 0x50
 8001fc2:	4618      	mov	r0, r3
 8001fc4:	f000 f949 	bl	800225a <TIM_ITRx_SetConfig>
 8001fc8:	e02c      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 8001fca:	687b      	ldr	r3, [r7, #4]
 8001fcc:	6818      	ldr	r0, [r3, #0]
 8001fce:	683b      	ldr	r3, [r7, #0]
 8001fd0:	6859      	ldr	r1, [r3, #4]
 8001fd2:	683b      	ldr	r3, [r7, #0]
 8001fd4:	68db      	ldr	r3, [r3, #12]
 8001fd6:	461a      	mov	r2, r3
 8001fd8:	f000 f90f 	bl	80021fa <TIM_TI2_ConfigInputStage>
 8001fdc:	687b      	ldr	r3, [r7, #4]
 8001fde:	681b      	ldr	r3, [r3, #0]
 8001fe0:	2160      	movs	r1, #96	@ 0x60
 8001fe2:	4618      	mov	r0, r3
 8001fe4:	f000 f939 	bl	800225a <TIM_ITRx_SetConfig>
 8001fe8:	e01c      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 8001fea:	687b      	ldr	r3, [r7, #4]
 8001fec:	6818      	ldr	r0, [r3, #0]
 8001fee:	683b      	ldr	r3, [r7, #0]
 8001ff0:	6859      	ldr	r1, [r3, #4]
 8001ff2:	683b      	ldr	r3, [r7, #0]
 8001ff4:	68db      	ldr	r3, [r3, #12]
 8001ff6:	461a      	mov	r2, r3
 8001ff8:	f000 f8d0 	bl	800219c <TIM_TI1_ConfigInputStage>
 8001ffc:	687b      	ldr	r3, [r7, #4]
 8001ffe:	681b      	ldr	r3, [r3, #0]
 8002000:	2140      	movs	r1, #64	@ 0x40
 8002002:	4618      	mov	r0, r3
 8002004:	f000 f929 	bl	800225a <TIM_ITRx_SetConfig>
 8002008:	e00c      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 800200a:	687b      	ldr	r3, [r7, #4]
 800200c:	681a      	ldr	r2, [r3, #0]
 800200e:	683b      	ldr	r3, [r7, #0]
 8002010:	681b      	ldr	r3, [r3, #0]
 8002012:	4619      	mov	r1, r3
 8002014:	4610      	mov	r0, r2
 8002016:	f000 f920 	bl	800225a <TIM_ITRx_SetConfig>
 800201a:	e003      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 800201c:	2301      	movs	r3, #1
 800201e:	73fb      	strb	r3, [r7, #15]
 8002020:	e000      	b.n	8002024 <HAL_TIM_ConfigClockSource+0x174>
 8002022:	bf00      	nop
 8002024:	687b      	ldr	r3, [r7, #4]
 8002026:	2201      	movs	r2, #1
 8002028:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 800202c:	687b      	ldr	r3, [r7, #4]
 800202e:	2200      	movs	r2, #0
 8002030:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002034:	7bfb      	ldrb	r3, [r7, #15]
 8002036:	4618      	mov	r0, r3
 8002038:	3710      	adds	r7, #16
 800203a:	46bd      	mov	sp, r7
 800203c:	bd80      	pop	{r7, pc}

0800203e <HAL_TIM_OC_DelayElapsedCallback>:
 800203e:	b480      	push	{r7}
 8002040:	b083      	sub	sp, #12
 8002042:	af00      	add	r7, sp, #0
 8002044:	6078      	str	r0, [r7, #4]
 8002046:	bf00      	nop
 8002048:	370c      	adds	r7, #12
 800204a:	46bd      	mov	sp, r7
 800204c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002050:	4770      	bx	lr

08002052 <HAL_TIM_IC_CaptureCallback>:
 8002052:	b480      	push	{r7}
 8002054:	b083      	sub	sp, #12
 8002056:	af00      	add	r7, sp, #0
 8002058:	6078      	str	r0, [r7, #4]
 800205a:	bf00      	nop
 800205c:	370c      	adds	r7, #12
 800205e:	46bd      	mov	sp, r7
 8002060:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002064:	4770      	bx	lr

08002066 <HAL_TIM_PWM_PulseFinishedCallback>:
 8002066:	b480      	push	{r7}
 8002068:	b083      	sub	sp, #12
 800206a:	af00      	add	r7, sp, #0
 800206c:	6078      	str	r0, [r7, #4]
 800206e:	bf00      	nop
 8002070:	370c      	adds	r7, #12
 8002072:	46bd      	mov	sp, r7
 8002074:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002078:	4770      	bx	lr

0800207a <HAL_TIM_TriggerCallback>:
 800207a:	b480      	push	{r7}
 800207c:	b083      	sub	sp, #12
 800207e:	af00      	add	r7, sp, #0
 8002080:	6078      	str	r0, [r7, #4]
 8002082:	bf00      	nop
 8002084:	370c      	adds	r7, #12
 8002086:	46bd      	mov	sp, r7
 8002088:	f85d 7b04 	ldr.w	r7, [sp], #4
 800208c:	4770      	bx	lr
	...

08002090 <TIM_Base_SetConfig>:
 8002090:	b480      	push	{r7}
 8002092:	b085      	sub	sp, #20
 8002094:	af00      	add	r7, sp, #0
 8002096:	6078      	str	r0, [r7, #4]
 8002098:	6039      	str	r1, [r7, #0]
 800209a:	687b      	ldr	r3, [r7, #4]
 800209c:	681b      	ldr	r3, [r3, #0]
 800209e:	60fb      	str	r3, [r7, #12]
 80020a0:	687b      	ldr	r3, [r7, #4]
 80020a2:	4a37      	ldr	r2, [pc, #220]	@ (8002180 <TIM_Base_SetConfig+0xf0>)
 80020a4:	4293      	cmp	r3, r2
 80020a6:	d00f      	beq.n	80020c8 <TIM_Base_SetConfig+0x38>
 80020a8:	687b      	ldr	r3, [r7, #4]
 80020aa:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80020ae:	d00b      	beq.n	80020c8 <TIM_Base_SetConfig+0x38>
 80020b0:	687b      	ldr	r3, [r7, #4]
 80020b2:	4a34      	ldr	r2, [pc, #208]	@ (8002184 <TIM_Base_SetConfig+0xf4>)
 80020b4:	4293      	cmp	r3, r2
 80020b6:	d007      	beq.n	80020c8 <TIM_Base_SetConfig+0x38>
 80020b8:	687b      	ldr	r3, [r7, #4]
 80020ba:	4a33      	ldr	r2, [pc, #204]	@ (8002188 <TIM_Base_SetConfig+0xf8>)
 80020bc:	4293      	cmp	r3, r2
 80020be:	d003      	beq.n	80020c8 <TIM_Base_SetConfig+0x38>
 80020c0:	687b      	ldr	r3, [r7, #4]
 80020c2:	4a32      	ldr	r2, [pc, #200]	@ (800218c <TIM_Base_SetConfig+0xfc>)
 80020c4:	4293      	cmp	r3, r2
 80020c6:	d108      	bne.n	80020da <TIM_Base_SetConfig+0x4a>
 80020c8:	68fb      	ldr	r3, [r7, #12]
 80020ca:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80020ce:	60fb      	str	r3, [r7, #12]
 80020d0:	683b      	ldr	r3, [r7, #0]
 80020d2:	685b      	ldr	r3, [r3, #4]
 80020d4:	68fa      	ldr	r2, [r7, #12]
 80020d6:	4313      	orrs	r3, r2
 80020d8:	60fb      	str	r3, [r7, #12]
 80020da:	687b      	ldr	r3, [r7, #4]
 80020dc:	4a28      	ldr	r2, [pc, #160]	@ (8002180 <TIM_Base_SetConfig+0xf0>)
 80020de:	4293      	cmp	r3, r2
 80020e0:	d01b      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 80020e2:	687b      	ldr	r3, [r7, #4]
 80020e4:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80020e8:	d017      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 80020ea:	687b      	ldr	r3, [r7, #4]
 80020ec:	4a25      	ldr	r2, [pc, #148]	@ (8002184 <TIM_Base_SetConfig+0xf4>)
 80020ee:	4293      	cmp	r3, r2
 80020f0:	d013      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 80020f2:	687b      	ldr	r3, [r7, #4]
 80020f4:	4a24      	ldr	r2, [pc, #144]	@ (8002188 <TIM_Base_SetConfig+0xf8>)
 80020f6:	4293      	cmp	r3, r2
 80020f8:	d00f      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 80020fa:	687b      	ldr	r3, [r7, #4]
 80020fc:	4a23      	ldr	r2, [pc, #140]	@ (800218c <TIM_Base_SetConfig+0xfc>)
 80020fe:	4293      	cmp	r3, r2
 8002100:	d00b      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 8002102:	687b      	ldr	r3, [r7, #4]
 8002104:	4a22      	ldr	r2, [pc, #136]	@ (8002190 <TIM_Base_SetConfig+0x100>)
 8002106:	4293      	cmp	r3, r2
 8002108:	d007      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 800210a:	687b      	ldr	r3, [r7, #4]
 800210c:	4a21      	ldr	r2, [pc, #132]	@ (8002194 <TIM_Base_SetConfig+0x104>)
 800210e:	4293      	cmp	r3, r2
 8002110:	d003      	beq.n	800211a <TIM_Base_SetConfig+0x8a>
 8002112:	687b      	ldr	r3, [r7, #4]
 8002114:	4a20      	ldr	r2, [pc, #128]	@ (8002198 <TIM_Base_SetConfig+0x108>)
 8002116:	4293      	cmp	r3, r2
 8002118:	d108      	bne.n	800212c <TIM_Base_SetConfig+0x9c>
 800211a:	68fb      	ldr	r3, [r7, #12]
 800211c:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8002120:	60fb      	str	r3, [r7, #12]
 8002122:	683b      	ldr	r3, [r7, #0]
 8002124:	68db      	ldr	r3, [r3, #12]
 8002126:	68fa      	ldr	r2, [r7, #12]
 8002128:	4313      	orrs	r3, r2
 800212a:	60fb      	str	r3, [r7, #12]
 800212c:	68fb      	ldr	r3, [r7, #12]
 800212e:	f023 0280 	bic.w	r2, r3, #128	@ 0x80
 8002132:	683b      	ldr	r3, [r7, #0]
 8002134:	695b      	ldr	r3, [r3, #20]
 8002136:	4313      	orrs	r3, r2
 8002138:	60fb      	str	r3, [r7, #12]
 800213a:	683b      	ldr	r3, [r7, #0]
 800213c:	689a      	ldr	r2, [r3, #8]
 800213e:	687b      	ldr	r3, [r7, #4]
 8002140:	62da      	str	r2, [r3, #44]	@ 0x2c
 8002142:	683b      	ldr	r3, [r7, #0]
 8002144:	681a      	ldr	r2, [r3, #0]
 8002146:	687b      	ldr	r3, [r7, #4]
 8002148:	629a      	str	r2, [r3, #40]	@ 0x28
 800214a:	687b      	ldr	r3, [r7, #4]
 800214c:	4a0c      	ldr	r2, [pc, #48]	@ (8002180 <TIM_Base_SetConfig+0xf0>)
 800214e:	4293      	cmp	r3, r2
 8002150:	d103      	bne.n	800215a <TIM_Base_SetConfig+0xca>
 8002152:	683b      	ldr	r3, [r7, #0]
 8002154:	691a      	ldr	r2, [r3, #16]
 8002156:	687b      	ldr	r3, [r7, #4]
 8002158:	631a      	str	r2, [r3, #48]	@ 0x30
 800215a:	687b      	ldr	r3, [r7, #4]
 800215c:	681b      	ldr	r3, [r3, #0]
 800215e:	f043 0204 	orr.w	r2, r3, #4
 8002162:	687b      	ldr	r3, [r7, #4]
 8002164:	601a      	str	r2, [r3, #0]
 8002166:	687b      	ldr	r3, [r7, #4]
 8002168:	2201      	movs	r2, #1
 800216a:	615a      	str	r2, [r3, #20]
 800216c:	687b      	ldr	r3, [r7, #4]
 800216e:	68fa      	ldr	r2, [r7, #12]
 8002170:	601a      	str	r2, [r3, #0]
 8002172:	bf00      	nop
 8002174:	3714      	adds	r7, #20
 8002176:	46bd      	mov	sp, r7
 8002178:	f85d 7b04 	ldr.w	r7, [sp], #4
 800217c:	4770      	bx	lr
 800217e:	bf00      	nop
 8002180:	40010000 	.word	0x40010000
 8002184:	40000400 	.word	0x40000400
 8002188:	40000800 	.word	0x40000800
 800218c:	40000c00 	.word	0x40000c00
 8002190:	40014000 	.word	0x40014000
 8002194:	40014400 	.word	0x40014400
 8002198:	40014800 	.word	0x40014800

0800219c <TIM_TI1_ConfigInputStage>:
 800219c:	b480      	push	{r7}
 800219e:	b087      	sub	sp, #28
 80021a0:	af00      	add	r7, sp, #0
 80021a2:	60f8      	str	r0, [r7, #12]
 80021a4:	60b9      	str	r1, [r7, #8]
 80021a6:	607a      	str	r2, [r7, #4]
 80021a8:	68fb      	ldr	r3, [r7, #12]
 80021aa:	6a1b      	ldr	r3, [r3, #32]
 80021ac:	617b      	str	r3, [r7, #20]
 80021ae:	68fb      	ldr	r3, [r7, #12]
 80021b0:	6a1b      	ldr	r3, [r3, #32]
 80021b2:	f023 0201 	bic.w	r2, r3, #1
 80021b6:	68fb      	ldr	r3, [r7, #12]
 80021b8:	621a      	str	r2, [r3, #32]
 80021ba:	68fb      	ldr	r3, [r7, #12]
 80021bc:	699b      	ldr	r3, [r3, #24]
 80021be:	613b      	str	r3, [r7, #16]
 80021c0:	693b      	ldr	r3, [r7, #16]
 80021c2:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80021c6:	613b      	str	r3, [r7, #16]
 80021c8:	687b      	ldr	r3, [r7, #4]
 80021ca:	011b      	lsls	r3, r3, #4
 80021cc:	693a      	ldr	r2, [r7, #16]
 80021ce:	4313      	orrs	r3, r2
 80021d0:	613b      	str	r3, [r7, #16]
 80021d2:	697b      	ldr	r3, [r7, #20]
 80021d4:	f023 030a 	bic.w	r3, r3, #10
 80021d8:	617b      	str	r3, [r7, #20]
 80021da:	697a      	ldr	r2, [r7, #20]
 80021dc:	68bb      	ldr	r3, [r7, #8]
 80021de:	4313      	orrs	r3, r2
 80021e0:	617b      	str	r3, [r7, #20]
 80021e2:	68fb      	ldr	r3, [r7, #12]
 80021e4:	693a      	ldr	r2, [r7, #16]
 80021e6:	619a      	str	r2, [r3, #24]
 80021e8:	68fb      	ldr	r3, [r7, #12]
 80021ea:	697a      	ldr	r2, [r7, #20]
 80021ec:	621a      	str	r2, [r3, #32]
 80021ee:	bf00      	nop
 80021f0:	371c      	adds	r7, #28
 80021f2:	46bd      	mov	sp, r7
 80021f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80021f8:	4770      	bx	lr

080021fa <TIM_TI2_ConfigInputStage>:
 80021fa:	b480      	push	{r7}
 80021fc:	b087      	sub	sp, #28
 80021fe:	af00      	add	r7, sp, #0
 8002200:	60f8      	str	r0, [r7, #12]
 8002202:	60b9      	str	r1, [r7, #8]
 8002204:	607a      	str	r2, [r7, #4]
 8002206:	68fb      	ldr	r3, [r7, #12]
 8002208:	6a1b      	ldr	r3, [r3, #32]
 800220a:	617b      	str	r3, [r7, #20]
 800220c:	68fb      	ldr	r3, [r7, #12]
 800220e:	6a1b      	ldr	r3, [r3, #32]
 8002210:	f023 0210 	bic.w	r2, r3, #16
 8002214:	68fb      	ldr	r3, [r7, #12]
 8002216:	621a      	str	r2, [r3, #32]
 8002218:	68fb      	ldr	r3, [r7, #12]
 800221a:	699b      	ldr	r3, [r3, #24]
 800221c:	613b      	str	r3, [r7, #16]
 800221e:	693b      	ldr	r3, [r7, #16]
 8002220:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 8002224:	613b      	str	r3, [r7, #16]
 8002226:	687b      	ldr	r3, [r7, #4]
 8002228:	031b      	lsls	r3, r3, #12
 800222a:	693a      	ldr	r2, [r7, #16]
 800222c:	4313      	orrs	r3, r2
 800222e:	613b      	str	r3, [r7, #16]
 8002230:	697b      	ldr	r3, [r7, #20]
 8002232:	f023 03a0 	bic.w	r3, r3, #160	@ 0xa0
 8002236:	617b      	str	r3, [r7, #20]
 8002238:	68bb      	ldr	r3, [r7, #8]
 800223a:	011b      	lsls	r3, r3, #4
 800223c:	697a      	ldr	r2, [r7, #20]
 800223e:	4313      	orrs	r3, r2
 8002240:	617b      	str	r3, [r7, #20]
 8002242:	68fb      	ldr	r3, [r7, #12]
 8002244:	693a      	ldr	r2, [r7, #16]
 8002246:	619a      	str	r2, [r3, #24]
 8002248:	68fb      	ldr	r3, [r7, #12]
 800224a:	697a      	ldr	r2, [r7, #20]
 800224c:	621a      	str	r2, [r3, #32]
 800224e:	bf00      	nop
 8002250:	371c      	adds	r7, #28
 8002252:	46bd      	mov	sp, r7
 8002254:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002258:	4770      	bx	lr

0800225a <TIM_ITRx_SetConfig>:
 800225a:	b480      	push	{r7}
 800225c:	b085      	sub	sp, #20
 800225e:	af00      	add	r7, sp, #0
 8002260:	6078      	str	r0, [r7, #4]
 8002262:	6039      	str	r1, [r7, #0]
 8002264:	687b      	ldr	r3, [r7, #4]
 8002266:	689b      	ldr	r3, [r3, #8]
 8002268:	60fb      	str	r3, [r7, #12]
 800226a:	68fb      	ldr	r3, [r7, #12]
 800226c:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8002270:	60fb      	str	r3, [r7, #12]
 8002272:	683a      	ldr	r2, [r7, #0]
 8002274:	68fb      	ldr	r3, [r7, #12]
 8002276:	4313      	orrs	r3, r2
 8002278:	f043 0307 	orr.w	r3, r3, #7
 800227c:	60fb      	str	r3, [r7, #12]
 800227e:	687b      	ldr	r3, [r7, #4]
 8002280:	68fa      	ldr	r2, [r7, #12]
 8002282:	609a      	str	r2, [r3, #8]
 8002284:	bf00      	nop
 8002286:	3714      	adds	r7, #20
 8002288:	46bd      	mov	sp, r7
 800228a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800228e:	4770      	bx	lr

08002290 <TIM_ETR_SetConfig>:
 8002290:	b480      	push	{r7}
 8002292:	b087      	sub	sp, #28
 8002294:	af00      	add	r7, sp, #0
 8002296:	60f8      	str	r0, [r7, #12]
 8002298:	60b9      	str	r1, [r7, #8]
 800229a:	607a      	str	r2, [r7, #4]
 800229c:	603b      	str	r3, [r7, #0]
 800229e:	68fb      	ldr	r3, [r7, #12]
 80022a0:	689b      	ldr	r3, [r3, #8]
 80022a2:	617b      	str	r3, [r7, #20]
 80022a4:	697b      	ldr	r3, [r7, #20]
 80022a6:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 80022aa:	617b      	str	r3, [r7, #20]
 80022ac:	683b      	ldr	r3, [r7, #0]
 80022ae:	021a      	lsls	r2, r3, #8
 80022b0:	687b      	ldr	r3, [r7, #4]
 80022b2:	431a      	orrs	r2, r3
 80022b4:	68bb      	ldr	r3, [r7, #8]
 80022b6:	4313      	orrs	r3, r2
 80022b8:	697a      	ldr	r2, [r7, #20]
 80022ba:	4313      	orrs	r3, r2
 80022bc:	617b      	str	r3, [r7, #20]
 80022be:	68fb      	ldr	r3, [r7, #12]
 80022c0:	697a      	ldr	r2, [r7, #20]
 80022c2:	609a      	str	r2, [r3, #8]
 80022c4:	bf00      	nop
 80022c6:	371c      	adds	r7, #28
 80022c8:	46bd      	mov	sp, r7
 80022ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80022ce:	4770      	bx	lr

080022d0 <HAL_TIMEx_MasterConfigSynchronization>:
 80022d0:	b480      	push	{r7}
 80022d2:	b085      	sub	sp, #20
 80022d4:	af00      	add	r7, sp, #0
 80022d6:	6078      	str	r0, [r7, #4]
 80022d8:	6039      	str	r1, [r7, #0]
 80022da:	687b      	ldr	r3, [r7, #4]
 80022dc:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 80022e0:	2b01      	cmp	r3, #1
 80022e2:	d101      	bne.n	80022e8 <HAL_TIMEx_MasterConfigSynchronization+0x18>
 80022e4:	2302      	movs	r3, #2
 80022e6:	e050      	b.n	800238a <HAL_TIMEx_MasterConfigSynchronization+0xba>
 80022e8:	687b      	ldr	r3, [r7, #4]
 80022ea:	2201      	movs	r2, #1
 80022ec:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 80022f0:	687b      	ldr	r3, [r7, #4]
 80022f2:	2202      	movs	r2, #2
 80022f4:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 80022f8:	687b      	ldr	r3, [r7, #4]
 80022fa:	681b      	ldr	r3, [r3, #0]
 80022fc:	685b      	ldr	r3, [r3, #4]
 80022fe:	60fb      	str	r3, [r7, #12]
 8002300:	687b      	ldr	r3, [r7, #4]
 8002302:	681b      	ldr	r3, [r3, #0]
 8002304:	689b      	ldr	r3, [r3, #8]
 8002306:	60bb      	str	r3, [r7, #8]
 8002308:	68fb      	ldr	r3, [r7, #12]
 800230a:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 800230e:	60fb      	str	r3, [r7, #12]
 8002310:	683b      	ldr	r3, [r7, #0]
 8002312:	681b      	ldr	r3, [r3, #0]
 8002314:	68fa      	ldr	r2, [r7, #12]
 8002316:	4313      	orrs	r3, r2
 8002318:	60fb      	str	r3, [r7, #12]
 800231a:	687b      	ldr	r3, [r7, #4]
 800231c:	681b      	ldr	r3, [r3, #0]
 800231e:	68fa      	ldr	r2, [r7, #12]
 8002320:	605a      	str	r2, [r3, #4]
 8002322:	687b      	ldr	r3, [r7, #4]
 8002324:	681b      	ldr	r3, [r3, #0]
 8002326:	4a1c      	ldr	r2, [pc, #112]	@ (8002398 <HAL_TIMEx_MasterConfigSynchronization+0xc8>)
 8002328:	4293      	cmp	r3, r2
 800232a:	d018      	beq.n	800235e <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 800232c:	687b      	ldr	r3, [r7, #4]
 800232e:	681b      	ldr	r3, [r3, #0]
 8002330:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8002334:	d013      	beq.n	800235e <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 8002336:	687b      	ldr	r3, [r7, #4]
 8002338:	681b      	ldr	r3, [r3, #0]
 800233a:	4a18      	ldr	r2, [pc, #96]	@ (800239c <HAL_TIMEx_MasterConfigSynchronization+0xcc>)
 800233c:	4293      	cmp	r3, r2
 800233e:	d00e      	beq.n	800235e <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 8002340:	687b      	ldr	r3, [r7, #4]
 8002342:	681b      	ldr	r3, [r3, #0]
 8002344:	4a16      	ldr	r2, [pc, #88]	@ (80023a0 <HAL_TIMEx_MasterConfigSynchronization+0xd0>)
 8002346:	4293      	cmp	r3, r2
 8002348:	d009      	beq.n	800235e <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 800234a:	687b      	ldr	r3, [r7, #4]
 800234c:	681b      	ldr	r3, [r3, #0]
 800234e:	4a15      	ldr	r2, [pc, #84]	@ (80023a4 <HAL_TIMEx_MasterConfigSynchronization+0xd4>)
 8002350:	4293      	cmp	r3, r2
 8002352:	d004      	beq.n	800235e <HAL_TIMEx_MasterConfigSynchronization+0x8e>
 8002354:	687b      	ldr	r3, [r7, #4]
 8002356:	681b      	ldr	r3, [r3, #0]
 8002358:	4a13      	ldr	r2, [pc, #76]	@ (80023a8 <HAL_TIMEx_MasterConfigSynchronization+0xd8>)
 800235a:	4293      	cmp	r3, r2
 800235c:	d10c      	bne.n	8002378 <HAL_TIMEx_MasterConfigSynchronization+0xa8>
 800235e:	68bb      	ldr	r3, [r7, #8]
 8002360:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8002364:	60bb      	str	r3, [r7, #8]
 8002366:	683b      	ldr	r3, [r7, #0]
 8002368:	685b      	ldr	r3, [r3, #4]
 800236a:	68ba      	ldr	r2, [r7, #8]
 800236c:	4313      	orrs	r3, r2
 800236e:	60bb      	str	r3, [r7, #8]
 8002370:	687b      	ldr	r3, [r7, #4]
 8002372:	681b      	ldr	r3, [r3, #0]
 8002374:	68ba      	ldr	r2, [r7, #8]
 8002376:	609a      	str	r2, [r3, #8]
 8002378:	687b      	ldr	r3, [r7, #4]
 800237a:	2201      	movs	r2, #1
 800237c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8002380:	687b      	ldr	r3, [r7, #4]
 8002382:	2200      	movs	r2, #0
 8002384:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8002388:	2300      	movs	r3, #0
 800238a:	4618      	mov	r0, r3
 800238c:	3714      	adds	r7, #20
 800238e:	46bd      	mov	sp, r7
 8002390:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002394:	4770      	bx	lr
 8002396:	bf00      	nop
 8002398:	40010000 	.word	0x40010000
 800239c:	40000400 	.word	0x40000400
 80023a0:	40000800 	.word	0x40000800
 80023a4:	40000c00 	.word	0x40000c00
 80023a8:	40014000 	.word	0x40014000

080023ac <HAL_TIMEx_CommutCallback>:
 80023ac:	b480      	push	{r7}
 80023ae:	b083      	sub	sp, #12
 80023b0:	af00      	add	r7, sp, #0
 80023b2:	6078      	str	r0, [r7, #4]
 80023b4:	bf00      	nop
 80023b6:	370c      	adds	r7, #12
 80023b8:	46bd      	mov	sp, r7
 80023ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023be:	4770      	bx	lr

080023c0 <HAL_TIMEx_BreakCallback>:
 80023c0:	b480      	push	{r7}
 80023c2:	b083      	sub	sp, #12
 80023c4:	af00      	add	r7, sp, #0
 80023c6:	6078      	str	r0, [r7, #4]
 80023c8:	bf00      	nop
 80023ca:	370c      	adds	r7, #12
 80023cc:	46bd      	mov	sp, r7
 80023ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023d2:	4770      	bx	lr

080023d4 <memset>:
 80023d4:	4402      	add	r2, r0
 80023d6:	4603      	mov	r3, r0
 80023d8:	4293      	cmp	r3, r2
 80023da:	d100      	bne.n	80023de <memset+0xa>
 80023dc:	4770      	bx	lr
 80023de:	f803 1b01 	strb.w	r1, [r3], #1
 80023e2:	e7f9      	b.n	80023d8 <memset+0x4>

080023e4 <__libc_init_array>:
 80023e4:	b570      	push	{r4, r5, r6, lr}
 80023e6:	4d0d      	ldr	r5, [pc, #52]	@ (800241c <__libc_init_array+0x38>)
 80023e8:	4c0d      	ldr	r4, [pc, #52]	@ (8002420 <__libc_init_array+0x3c>)
 80023ea:	1b64      	subs	r4, r4, r5
 80023ec:	10a4      	asrs	r4, r4, #2
 80023ee:	2600      	movs	r6, #0
 80023f0:	42a6      	cmp	r6, r4
 80023f2:	d109      	bne.n	8002408 <__libc_init_array+0x24>
 80023f4:	4d0b      	ldr	r5, [pc, #44]	@ (8002424 <__libc_init_array+0x40>)
 80023f6:	4c0c      	ldr	r4, [pc, #48]	@ (8002428 <__libc_init_array+0x44>)
 80023f8:	f000 f818 	bl	800242c <_init>
 80023fc:	1b64      	subs	r4, r4, r5
 80023fe:	10a4      	asrs	r4, r4, #2
 8002400:	2600      	movs	r6, #0
 8002402:	42a6      	cmp	r6, r4
 8002404:	d105      	bne.n	8002412 <__libc_init_array+0x2e>
 8002406:	bd70      	pop	{r4, r5, r6, pc}
 8002408:	f855 3b04 	ldr.w	r3, [r5], #4
 800240c:	4798      	blx	r3
 800240e:	3601      	adds	r6, #1
 8002410:	e7ee      	b.n	80023f0 <__libc_init_array+0xc>
 8002412:	f855 3b04 	ldr.w	r3, [r5], #4
 8002416:	4798      	blx	r3
 8002418:	3601      	adds	r6, #1
 800241a:	e7f2      	b.n	8002402 <__libc_init_array+0x1e>
 800241c:	08002468 	.word	0x08002468
 8002420:	08002468 	.word	0x08002468
 8002424:	08002468 	.word	0x08002468
 8002428:	0800246c 	.word	0x0800246c

0800242c <_init>:
 800242c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800242e:	bf00      	nop
 8002430:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002432:	bc08      	pop	{r3}
 8002434:	469e      	mov	lr, r3
 8002436:	4770      	bx	lr

08002438 <_fini>:
 8002438:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800243a:	bf00      	nop
 800243c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800243e:	bc08      	pop	{r3}
 8002440:	469e      	mov	lr, r3
 8002442:	4770      	bx	lr
