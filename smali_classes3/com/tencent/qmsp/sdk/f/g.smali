.class public Lcom/tencent/qmsp/sdk/f/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String; = "Qp.Log"

.field private static b:Z = false


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/tencent/qmsp/sdk/f/g;->b:Z

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qmsp/sdk/f/g;->b:Z

    return-void
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/tencent/qmsp/sdk/f/g;->b:Z

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/tencent/qmsp/sdk/f/g;->b:Z

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/tencent/qmsp/sdk/f/g;->b:Z

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
