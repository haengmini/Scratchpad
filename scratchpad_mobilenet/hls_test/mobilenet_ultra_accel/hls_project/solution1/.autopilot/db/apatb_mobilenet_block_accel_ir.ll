; ModuleID = 'D:/Lab/scratchpad/hls_test/mobilenet_ultra_accel/hls_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_mobilenet_block_accel_ir(i8* noalias nocapture nonnull readonly "maxi" %input, i8* noalias nocapture nonnull readonly "maxi" %dw_weights, i32* noalias nonnull readonly "maxi" %dw_bias, i8* noalias nocapture nonnull readonly "maxi" %pw_weights, i32* noalias nocapture nonnull readonly "maxi" %pw_bias, i8* noalias nocapture nonnull "maxi" %output, i32 %height, i32 %width, i32 %c_in, i32 %c_out, i32 %dw_in_zp, i32 %dw_w_zp, i32 %dw_out_zp, i32 %dw_multiplier, i32 %dw_shift, i32 %dw_apply_relu6, i32 %pw_act_zp, i32 %pw_wgt_zp, i32 %pw_out_zp, i32 %pw_M_mantissa, i32 %pw_M_shift, i32 %pw_use_bias) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %input to [1605632 x i8]*
  %1 = call i8* @malloc(i64 1605632)
  %input_copy = bitcast i8* %1 to [1605632 x i8]*
  %2 = bitcast i8* %dw_weights to [9216 x i8]*
  %3 = call i8* @malloc(i64 9216)
  %dw_weights_copy = bitcast i8* %3 to [9216 x i8]*
  %4 = bitcast i32* %dw_bias to [1024 x i32]*
  %5 = call i8* @malloc(i64 4096)
  %dw_bias_copy = bitcast i8* %5 to [1024 x i32]*
  %6 = bitcast i8* %pw_weights to [1048576 x i8]*
  %7 = call i8* @malloc(i64 1048576)
  %pw_weights_copy = bitcast i8* %7 to [1048576 x i8]*
  %8 = bitcast i32* %pw_bias to [1024 x i32]*
  %9 = call i8* @malloc(i64 4096)
  %pw_bias_copy = bitcast i8* %9 to [1024 x i32]*
  %10 = bitcast i8* %output to [1605632 x i8]*
  %11 = call i8* @malloc(i64 1605632)
  %output_copy = bitcast i8* %11 to [1605632 x i8]*
  call fastcc void @copy_in([1605632 x i8]* nonnull %0, [1605632 x i8]* %input_copy, [9216 x i8]* nonnull %2, [9216 x i8]* %dw_weights_copy, [1024 x i32]* nonnull %4, [1024 x i32]* %dw_bias_copy, [1048576 x i8]* nonnull %6, [1048576 x i8]* %pw_weights_copy, [1024 x i32]* nonnull %8, [1024 x i32]* %pw_bias_copy, [1605632 x i8]* nonnull %10, [1605632 x i8]* %output_copy)
  call void @apatb_mobilenet_block_accel_hw([1605632 x i8]* %input_copy, [9216 x i8]* %dw_weights_copy, [1024 x i32]* %dw_bias_copy, [1048576 x i8]* %pw_weights_copy, [1024 x i32]* %pw_bias_copy, [1605632 x i8]* %output_copy, i32 %height, i32 %width, i32 %c_in, i32 %c_out, i32 %dw_in_zp, i32 %dw_w_zp, i32 %dw_out_zp, i32 %dw_multiplier, i32 %dw_shift, i32 %dw_apply_relu6, i32 %pw_act_zp, i32 %pw_wgt_zp, i32 %pw_out_zp, i32 %pw_M_mantissa, i32 %pw_M_shift, i32 %pw_use_bias)
  call void @copy_back([1605632 x i8]* %0, [1605632 x i8]* %input_copy, [9216 x i8]* %2, [9216 x i8]* %dw_weights_copy, [1024 x i32]* %4, [1024 x i32]* %dw_bias_copy, [1048576 x i8]* %6, [1048576 x i8]* %pw_weights_copy, [1024 x i32]* %8, [1024 x i32]* %pw_bias_copy, [1605632 x i8]* %10, [1605632 x i8]* %output_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %3)
  tail call void @free(i8* %5)
  tail call void @free(i8* %7)
  tail call void @free(i8* %9)
  tail call void @free(i8* %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([1605632 x i8]* readonly, [1605632 x i8]*, [9216 x i8]* readonly, [9216 x i8]*, [1024 x i32]* readonly, [1024 x i32]*, [1048576 x i8]* readonly, [1048576 x i8]*, [1024 x i32]* readonly, [1024 x i32]*, [1605632 x i8]* readonly, [1605632 x i8]*) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %1, [1605632 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a9216i8([9216 x i8]* %3, [9216 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %5, [1024 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a1048576i8([1048576 x i8]* %7, [1048576 x i8]* %6)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %9, [1024 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %11, [1605632 x i8]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %dst, [1605632 x i8]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1605632 x i8]* %dst, null
  %1 = icmp eq [1605632 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1605632i8([1605632 x i8]* nonnull %dst, [1605632 x i8]* nonnull %src, i64 1605632)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1605632i8([1605632 x i8]* %dst, [1605632 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1605632 x i8]* %src, null
  %1 = icmp eq [1605632 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1605632 x i8], [1605632 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1605632 x i8], [1605632 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a9216i8([9216 x i8]* %dst, [9216 x i8]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [9216 x i8]* %dst, null
  %1 = icmp eq [9216 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a9216i8([9216 x i8]* nonnull %dst, [9216 x i8]* nonnull %src, i64 9216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a9216i8([9216 x i8]* %dst, [9216 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [9216 x i8]* %src, null
  %1 = icmp eq [9216 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [9216 x i8], [9216 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [9216 x i8], [9216 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %dst, [1024 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x i32]* %dst, null
  %1 = icmp eq [1024 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024i32([1024 x i32]* nonnull %dst, [1024 x i32]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024i32([1024 x i32]* %dst, [1024 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1024 x i32]* %src, null
  %1 = icmp eq [1024 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i32], [1024 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1024 x i32], [1024 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1048576i8([1048576 x i8]* %dst, [1048576 x i8]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1048576 x i8]* %dst, null
  %1 = icmp eq [1048576 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1048576i8([1048576 x i8]* nonnull %dst, [1048576 x i8]* nonnull %src, i64 1048576)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1048576i8([1048576 x i8]* %dst, [1048576 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1048576 x i8]* %src, null
  %1 = icmp eq [1048576 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1048576 x i8], [1048576 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1048576 x i8], [1048576 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([1605632 x i8]*, [1605632 x i8]* readonly, [9216 x i8]*, [9216 x i8]* readonly, [1024 x i32]*, [1024 x i32]* readonly, [1048576 x i8]*, [1048576 x i8]* readonly, [1024 x i32]*, [1024 x i32]* readonly, [1605632 x i8]*, [1605632 x i8]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %0, [1605632 x i8]* %1)
  call fastcc void @onebyonecpy_hls.p0a9216i8([9216 x i8]* %2, [9216 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %4, [1024 x i32]* %5)
  call fastcc void @onebyonecpy_hls.p0a1048576i8([1048576 x i8]* %6, [1048576 x i8]* %7)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %8, [1024 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %10, [1605632 x i8]* %11)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_mobilenet_block_accel_hw([1605632 x i8]*, [9216 x i8]*, [1024 x i32]*, [1048576 x i8]*, [1024 x i32]*, [1605632 x i8]*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([1605632 x i8]*, [1605632 x i8]* readonly, [9216 x i8]*, [9216 x i8]* readonly, [1024 x i32]*, [1024 x i32]* readonly, [1048576 x i8]*, [1048576 x i8]* readonly, [1024 x i32]*, [1024 x i32]* readonly, [1605632 x i8]*, [1605632 x i8]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1605632i8([1605632 x i8]* %10, [1605632 x i8]* %11)
  ret void
}

declare void @mobilenet_block_accel_hw_stub(i8* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull readonly, i32* noalias nonnull readonly, i8* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i8* noalias nocapture nonnull, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)

define void @mobilenet_block_accel_hw_stub_wrapper([1605632 x i8]*, [9216 x i8]*, [1024 x i32]*, [1048576 x i8]*, [1024 x i32]*, [1605632 x i8]*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #5 {
entry:
  call void @copy_out([1605632 x i8]* null, [1605632 x i8]* %0, [9216 x i8]* null, [9216 x i8]* %1, [1024 x i32]* null, [1024 x i32]* %2, [1048576 x i8]* null, [1048576 x i8]* %3, [1024 x i32]* null, [1024 x i32]* %4, [1605632 x i8]* null, [1605632 x i8]* %5)
  %22 = bitcast [1605632 x i8]* %0 to i8*
  %23 = bitcast [9216 x i8]* %1 to i8*
  %24 = bitcast [1024 x i32]* %2 to i32*
  %25 = bitcast [1048576 x i8]* %3 to i8*
  %26 = bitcast [1024 x i32]* %4 to i32*
  %27 = bitcast [1605632 x i8]* %5 to i8*
  call void @mobilenet_block_accel_hw_stub(i8* %22, i8* %23, i32* %24, i8* %25, i32* %26, i8* %27, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  call void @copy_in([1605632 x i8]* null, [1605632 x i8]* %0, [9216 x i8]* null, [9216 x i8]* %1, [1024 x i32]* null, [1024 x i32]* %2, [1048576 x i8]* null, [1048576 x i8]* %3, [1024 x i32]* null, [1024 x i32]* %4, [1605632 x i8]* null, [1605632 x i8]* %5)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
