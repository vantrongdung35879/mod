.class public interface abstract Lcom/wukong/HeapDump/OOMGenerator$OOMCallback;
.super Ljava/lang/Object;
.source "OOMGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/HeapDump/OOMGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OOMCallback"
.end annotation


# virtual methods
.method public abstract on_exception(Ljava/lang/Exception;)V
.end method

.method public abstract on_finish()V
.end method

.method public abstract on_oom_error(Ljava/lang/OutOfMemoryError;)V
.end method

.method public abstract on_oom_start()V
.end method

.method public abstract on_oom_success()V
.end method
