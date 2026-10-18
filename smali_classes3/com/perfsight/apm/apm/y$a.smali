.class final enum Lcom/perfsight/apm/apm/y$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/apm/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfsight/apm/apm/y$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfsight/apm/apm/y$a;

.field public static final enum b:Lcom/perfsight/apm/apm/y$a;

.field private static final synthetic c:[Lcom/perfsight/apm/apm/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfsight/apm/apm/y$a;

    const-string v1, "kAdd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perfsight/apm/apm/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfsight/apm/apm/y$a;->a:Lcom/perfsight/apm/apm/y$a;

    new-instance v1, Lcom/perfsight/apm/apm/y$a;

    const-string v3, "kRemove"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perfsight/apm/apm/y$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfsight/apm/apm/y$a;->b:Lcom/perfsight/apm/apm/y$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/perfsight/apm/apm/y$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/perfsight/apm/apm/y$a;->c:[Lcom/perfsight/apm/apm/y$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/perfsight/apm/apm/y$a;
    .locals 1

    const-class v0, Lcom/perfsight/apm/apm/y$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfsight/apm/apm/y$a;

    return-object p0
.end method

.method public static values()[Lcom/perfsight/apm/apm/y$a;
    .locals 1

    sget-object v0, Lcom/perfsight/apm/apm/y$a;->c:[Lcom/perfsight/apm/apm/y$a;

    invoke-virtual {v0}, [Lcom/perfsight/apm/apm/y$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfsight/apm/apm/y$a;

    return-object v0
.end method
