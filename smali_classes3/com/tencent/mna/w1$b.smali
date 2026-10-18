.class Lcom/tencent/mna/w1$b;
.super Ljava/lang/Object;
.source "LossRateCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/w1;->b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/w1$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/w1;->a()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/w1$b;->a:I

    add-int/lit16 v1, v1, 0x258

    invoke-static {v0, v1}, Lcom/tencent/mna/base/jni/e;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
