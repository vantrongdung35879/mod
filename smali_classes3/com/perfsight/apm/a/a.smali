.class public final enum Lcom/perfsight/apm/a/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfsight/apm/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfsight/apm/a/a;

.field public static final enum b:Lcom/perfsight/apm/a/a;

.field public static final enum c:Lcom/perfsight/apm/a/a;

.field public static final enum d:Lcom/perfsight/apm/a/a;

.field private static final synthetic e:[Lcom/perfsight/apm/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/perfsight/apm/a/a;

    const-string v1, "kSceneData"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perfsight/apm/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfsight/apm/a/a;->a:Lcom/perfsight/apm/a/a;

    new-instance v1, Lcom/perfsight/apm/a/a;

    const-string v3, "kInTimeData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perfsight/apm/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfsight/apm/a/a;->b:Lcom/perfsight/apm/a/a;

    new-instance v3, Lcom/perfsight/apm/a/a;

    const-string v5, "kSceneDataCos"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perfsight/apm/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfsight/apm/a/a;->c:Lcom/perfsight/apm/a/a;

    new-instance v5, Lcom/perfsight/apm/a/a;

    const-string v7, "kBinDataCos"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perfsight/apm/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perfsight/apm/a/a;->d:Lcom/perfsight/apm/a/a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/perfsight/apm/a/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/perfsight/apm/a/a;->e:[Lcom/perfsight/apm/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfsight/apm/a/a;
    .locals 1

    const-class v0, Lcom/perfsight/apm/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfsight/apm/a/a;

    return-object p0
.end method

.method public static values()[Lcom/perfsight/apm/a/a;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/a/a;->e:[Lcom/perfsight/apm/a/a;

    invoke-virtual {v0}, [Lcom/perfsight/apm/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfsight/apm/a/a;

    return-object v0
.end method
