.class public abstract Lcom/tencent/tme/live/i/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/i/f$b;,
        Lcom/tencent/tme/live/i/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static c:J = 0x0L

.field public static d:I = 0x0

.field public static e:Z = false

.field public static f:Lcom/tencent/tme/live/i/f$b;


# instance fields
.field public a:[B

.field public b:Lcom/tencent/tme/live/i/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/i/f;->a:[B

    :try_start_0
    new-instance v1, Lcom/tencent/tme/live/i/c;

    invoke-direct {v1}, Lcom/tencent/tme/live/i/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/i/f;->b:Lcom/tencent/tme/live/i/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v0, p0, Lcom/tencent/tme/live/i/f;->b:Lcom/tencent/tme/live/i/c;

    :goto_0
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/i/f;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    sget-boolean p0, Lcom/tencent/tme/live/i/f;->e:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/tencent/tme/live/i/f;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x190

    if-eq p1, p0, :cond_1

    const/16 p0, 0x191

    if-ne p1, p0, :cond_2

    .line 2
    :cond_1
    :try_start_1
    sget-object p0, Lcom/tencent/tme/live/i/f;->f:Lcom/tencent/tme/live/i/f$b;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/tencent/tme/live/i/f$b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
