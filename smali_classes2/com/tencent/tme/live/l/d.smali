.class public Lcom/tencent/tme/live/l/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/squareup/tmes/Wire;


# direct methods
.method public static a()Lcom/squareup/tmes/Wire;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/l/d;->a:Lcom/squareup/tmes/Wire;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/tmes/Wire;-><init>([Ljava/lang/Class;)V

    sput-object v0, Lcom/tencent/tme/live/l/d;->a:Lcom/squareup/tmes/Wire;

    :cond_0
    sget-object v0, Lcom/tencent/tme/live/l/d;->a:Lcom/squareup/tmes/Wire;

    return-object v0
.end method
