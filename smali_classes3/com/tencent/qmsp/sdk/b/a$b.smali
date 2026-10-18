.class public final enum Lcom/tencent/qmsp/sdk/b/a$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qmsp/sdk/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/tencent/qmsp/sdk/b/a$b;

.field public static final enum d:Lcom/tencent/qmsp/sdk/b/a$b;

.field public static final enum e:Lcom/tencent/qmsp/sdk/b/a$b;

.field private static final synthetic f:[Lcom/tencent/qmsp/sdk/b/a$b;


# instance fields
.field private a:S

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/tencent/qmsp/sdk/b/a$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/tencent/qmsp/sdk/b/a$b;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a$b;->c:Lcom/tencent/qmsp/sdk/b/a$b;

    new-instance v1, Lcom/tencent/qmsp/sdk/b/a$b;

    const-string v4, "AES"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lcom/tencent/qmsp/sdk/b/a$b;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/tencent/qmsp/sdk/b/a$b;->d:Lcom/tencent/qmsp/sdk/b/a$b;

    new-instance v4, Lcom/tencent/qmsp/sdk/b/a$b;

    const-string v6, "NONE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7, v3}, Lcom/tencent/qmsp/sdk/b/a$b;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/tencent/qmsp/sdk/b/a$b;->e:Lcom/tencent/qmsp/sdk/b/a$b;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/tencent/qmsp/sdk/b/a$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    sput-object v3, Lcom/tencent/qmsp/sdk/b/a$b;->f:[Lcom/tencent/qmsp/sdk/b/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/tencent/qmsp/sdk/b/a$b;->a:S

    iput-object p4, p0, Lcom/tencent/qmsp/sdk/b/a$b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/tencent/qmsp/sdk/b/a$b;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/tencent/qmsp/sdk/b/a$b;->c:Lcom/tencent/qmsp/sdk/b/a$b;

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/qmsp/sdk/b/a$b;->e:Lcom/tencent/qmsp/sdk/b/a$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/tencent/qmsp/sdk/b/a$b;->d:Lcom/tencent/qmsp/sdk/b/a$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/b/a$b;
    .locals 1

    const-class v0, Lcom/tencent/qmsp/sdk/b/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qmsp/sdk/b/a$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qmsp/sdk/b/a$b;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$b;->f:[Lcom/tencent/qmsp/sdk/b/a$b;

    invoke-virtual {v0}, [Lcom/tencent/qmsp/sdk/b/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qmsp/sdk/b/a$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-short v0, p0, Lcom/tencent/qmsp/sdk/b/a$b;->a:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/b/a$b;->b:Ljava/lang/String;

    return-object v0
.end method
