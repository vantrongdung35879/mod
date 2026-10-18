.class public final enum Lcom/beetalk/sdk/request/ResponseType;
.super Ljava/lang/Enum;
.source "ResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/request/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/request/ResponseType;

.field public static final enum CODE:Lcom/beetalk/sdk/request/ResponseType;

.field public static final enum TOKEN:Lcom/beetalk/sdk/request/ResponseType;


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/request/ResponseType;
    .locals 3

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/beetalk/sdk/request/ResponseType;

    sget-object v1, Lcom/beetalk/sdk/request/ResponseType;->CODE:Lcom/beetalk/sdk/request/ResponseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/beetalk/sdk/request/ResponseType;

    const/4 v1, 0x0

    const-string v2, "code"

    const-string v3, "CODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/request/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/request/ResponseType;->CODE:Lcom/beetalk/sdk/request/ResponseType;

    new-instance v0, Lcom/beetalk/sdk/request/ResponseType;

    const/4 v1, 0x1

    const-string/jumbo v2, "token"

    const-string v3, "TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/request/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    .line 6
    invoke-static {}, Lcom/beetalk/sdk/request/ResponseType;->$values()[Lcom/beetalk/sdk/request/ResponseType;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/request/ResponseType;->$VALUES:[Lcom/beetalk/sdk/request/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/beetalk/sdk/request/ResponseType;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/request/ResponseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/beetalk/sdk/request/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/request/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/request/ResponseType;
    .locals 1

    .line 6
    sget-object v0, Lcom/beetalk/sdk/request/ResponseType;->$VALUES:[Lcom/beetalk/sdk/request/ResponseType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/request/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/request/ResponseType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/beetalk/sdk/request/ResponseType;->mValue:Ljava/lang/String;

    return-object v0
.end method
