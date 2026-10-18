.class public final enum Lcom/ihoc/mgpa/superframe/SupportState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/superframe/SupportState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/SupportState;",
        "",
        "state",
        "",
        "(Ljava/lang/String;II)V",
        "getState",
        "()I",
        "SUPPORTED",
        "UNSUPPORTED",
        "kgvmp_internationalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/superframe/SupportState;

.field public static final enum SUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

.field public static final enum UNSUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;


# instance fields
.field private final state:I


# direct methods
.method private static final synthetic $values()[Lcom/ihoc/mgpa/superframe/SupportState;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ihoc/mgpa/superframe/SupportState;

    sget-object v1, Lcom/ihoc/mgpa/superframe/SupportState;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SupportState;->UNSUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/SupportState;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/mgpa/superframe/SupportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/superframe/SupportState;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/mgpa/superframe/SupportState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->UNSUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    invoke-static {}, Lcom/ihoc/mgpa/superframe/SupportState;->$values()[Lcom/ihoc/mgpa/superframe/SupportState;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->$VALUES:[Lcom/ihoc/mgpa/superframe/SupportState;

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

    iput p3, p0, Lcom/ihoc/mgpa/superframe/SupportState;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/SupportState;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/superframe/SupportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/superframe/SupportState;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/superframe/SupportState;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->$VALUES:[Lcom/ihoc/mgpa/superframe/SupportState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/superframe/SupportState;

    return-object v0
.end method


# virtual methods
.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/superframe/SupportState;->state:I

    return v0
.end method
