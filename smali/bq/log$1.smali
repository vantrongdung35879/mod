.class Lbq/log$1;
.super Ljava/lang/Thread;
.source "log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq/log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 107
    invoke-static {}, Lbq/impl/log_invoker;->__api_mark_jvm_destroyed()V

    return-void
.end method
