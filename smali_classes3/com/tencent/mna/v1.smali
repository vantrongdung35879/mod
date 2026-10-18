.class public final Lcom/tencent/mna/v1;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/v1$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field private static b:Ljava/lang/String; = "MNA"

.field private static c:Lcom/tencent/mna/v1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 1

    .line 3
    sget v0, Lcom/tencent/mna/v1;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sput p0, Lcom/tencent/mna/v1;->a:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 2
    sput p0, Lcom/tencent/mna/v1;->a:I

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 4
    sget v0, Lcom/tencent/mna/v1;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/tencent/mna/v1;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/v1;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/v1;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/v1;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/v1;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/v1;->c:Lcom/tencent/mna/v1$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/tencent/mna/v1$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/v1;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/v1;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
