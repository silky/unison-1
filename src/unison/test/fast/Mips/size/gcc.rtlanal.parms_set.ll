; ModuleID = 'gcc.rtlanal.parms_set.ll'
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips--linux-gnu"

%struct.rtx_def.365 = type { i32, [1 x %union.rtunion_def.366] }
%union.rtunion_def.366 = type { i32 }

; Function Attrs: norecurse nounwind
define hidden void @parms_set(%struct.rtx_def.365* nocapture readonly %x, %struct.rtx_def.365* nocapture readnone %pat, i8* nocapture %data) #0 {
  %1 = getelementptr inbounds %struct.rtx_def.365, %struct.rtx_def.365* %x, i32 0, i32 0
  %2 = load i32, i32* %1, align 4
  %.mask = and i32 %2, -65536
  %3 = icmp eq i32 %.mask, 3997696
  br i1 %3, label %4, label %21

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.rtx_def.365, %struct.rtx_def.365* %x, i32 0, i32 1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 53
  br i1 %7, label %8, label %21

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds i8, i8* %data, i32 4
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %6
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

; <label>:15                                      ; preds = %8
  %16 = xor i32 %12, -1
  %17 = and i32 %11, %16
  store i32 %17, i32* %10, align 4
  %18 = bitcast i8* %data to i32*
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  br label %21

; <label>:21                                      ; preds = %15, %8, %4, %0
  ret void
}

attributes #0 = { norecurse nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+mips32r2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git 2d49f0a0ae8366964a93e3b7b26e29679bee7160) (http://llvm.org/git/llvm.git 60bc66b44837125843b58ed3e0fd2e6bb948d839)"}
