.class public final enum Lcom/tencent/mna/base/vendor/d$a;
.super Ljava/lang/Enum;
.source "IVendor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/vendor/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mna/base/vendor/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASUS:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum BLACK_SHARK:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum MEIZU:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum OPPO:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum OTHER:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum VIVO:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum XIAO_MI:Lcom/tencent/mna/base/vendor/d$a;

.field public static final enum ZTE:Lcom/tencent/mna/base/vendor/d$a;

.field private static final synthetic a:[Lcom/tencent/mna/base/vendor/d$a;


# instance fields
.field public final mAlternateName:Ljava/lang/String;

.field public final mOrigName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/mna/base/vendor/d$a;

    const-string v1, "asus"

    const-string v2, "ASUS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/base/vendor/d$a;->ASUS:Lcom/tencent/mna/base/vendor/d$a;

    .line 2
    new-instance v1, Lcom/tencent/mna/base/vendor/d$a;

    const-string v2, "blackshark"

    const-string v4, "BLACK_SHARK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/mna/base/vendor/d$a;->BLACK_SHARK:Lcom/tencent/mna/base/vendor/d$a;

    .line 3
    new-instance v2, Lcom/tencent/mna/base/vendor/d$a;

    const-string v4, "meizu"

    const-string v6, "MEIZU"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/mna/base/vendor/d$a;->MEIZU:Lcom/tencent/mna/base/vendor/d$a;

    .line 4
    new-instance v4, Lcom/tencent/mna/base/vendor/d$a;

    const-string v6, "oppo"

    const-string v8, ""

    const-string v9, "OPPO"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v6, v8}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/tencent/mna/base/vendor/d$a;->OPPO:Lcom/tencent/mna/base/vendor/d$a;

    .line 5
    new-instance v6, Lcom/tencent/mna/base/vendor/d$a;

    const-string/jumbo v8, "vivo"

    const-string v9, "realme"

    const-string v11, "VIVO"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v8, v9}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/tencent/mna/base/vendor/d$a;->VIVO:Lcom/tencent/mna/base/vendor/d$a;

    .line 6
    new-instance v8, Lcom/tencent/mna/base/vendor/d$a;

    const-string/jumbo v9, "xiaomi"

    const-string v11, "readmi"

    const-string v13, "XIAO_MI"

    const/4 v14, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/tencent/mna/base/vendor/d$a;->XIAO_MI:Lcom/tencent/mna/base/vendor/d$a;

    .line 7
    new-instance v9, Lcom/tencent/mna/base/vendor/d$a;

    const-string/jumbo v11, "zte"

    const-string v13, "ZTE"

    const/4 v15, 0x6

    invoke-direct {v9, v13, v15, v11}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tencent/mna/base/vendor/d$a;->ZTE:Lcom/tencent/mna/base/vendor/d$a;

    .line 8
    new-instance v11, Lcom/tencent/mna/base/vendor/d$a;

    const-string v13, "other"

    const-string v15, "OTHER"

    const/4 v14, 0x7

    invoke-direct {v11, v15, v14, v13}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/tencent/mna/base/vendor/d$a;->OTHER:Lcom/tencent/mna/base/vendor/d$a;

    const/16 v13, 0x8

    .line 9
    new-array v13, v13, [Lcom/tencent/mna/base/vendor/d$a;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v10

    aput-object v6, v13, v12

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    aput-object v11, v13, v14

    sput-object v13, Lcom/tencent/mna/base/vendor/d$a;->a:[Lcom/tencent/mna/base/vendor/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mna/base/vendor/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tencent/mna/base/vendor/d$a;->mAlternateName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/base/vendor/d$a;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mna/base/vendor/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mna/base/vendor/d$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mna/base/vendor/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/vendor/d$a;->a:[Lcom/tencent/mna/base/vendor/d$a;

    invoke-virtual {v0}, [Lcom/tencent/mna/base/vendor/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/base/vendor/d$a;

    return-object v0
.end method
