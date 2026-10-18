.class public final enum Lcom/tencent/gsdk/api/c;
.super Ljava/lang/Enum;
.source "GSDKPayEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/gsdk/api/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/gsdk/api/c;

.field public static final enum b:Lcom/tencent/gsdk/api/c;

.field public static final enum c:Lcom/tencent/gsdk/api/c;

.field private static final synthetic d:[Lcom/tencent/gsdk/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/gsdk/api/c;

    const-string v1, "PayStart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/gsdk/api/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/gsdk/api/c;->a:Lcom/tencent/gsdk/api/c;

    new-instance v1, Lcom/tencent/gsdk/api/c;

    const-string v3, "ClickPay"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/gsdk/api/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/gsdk/api/c;->b:Lcom/tencent/gsdk/api/c;

    new-instance v3, Lcom/tencent/gsdk/api/c;

    const-string v5, "PayDone"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/gsdk/api/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/gsdk/api/c;->c:Lcom/tencent/gsdk/api/c;

    const/4 v5, 0x3

    .line 2
    new-array v5, v5, [Lcom/tencent/gsdk/api/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/gsdk/api/c;->d:[Lcom/tencent/gsdk/api/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/tencent/gsdk/api/c;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/tencent/gsdk/api/c;->c:Lcom/tencent/gsdk/api/c;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/tencent/gsdk/api/c;->b:Lcom/tencent/gsdk/api/c;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Lcom/tencent/gsdk/api/c;->a:Lcom/tencent/gsdk/api/c;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/gsdk/api/c;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/gsdk/api/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/gsdk/api/c;

    return-object p0
.end method

.method public static values()[Lcom/tencent/gsdk/api/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/gsdk/api/c;->d:[Lcom/tencent/gsdk/api/c;

    invoke-virtual {v0}, [Lcom/tencent/gsdk/api/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/gsdk/api/c;

    return-object v0
.end method
