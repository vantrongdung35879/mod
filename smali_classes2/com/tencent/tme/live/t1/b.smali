.class public Lcom/tencent/tme/live/t1/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tencent/tme/live/t1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/t1/c;

    const-string v1, "tme_sdk.txt"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/t1/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/t1/b;->a:Lcom/tencent/tme/live/t1/c;

    sget-object v1, Lcom/tencent/tme/live/t1/a;->f:Lcom/tencent/tme/live/t1/a;

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/t1/c;->b:Lcom/tencent/tme/live/t1/a;

    return-void
.end method
