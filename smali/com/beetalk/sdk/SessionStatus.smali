.class public final enum Lcom/beetalk/sdk/SessionStatus;
.super Ljava/lang/Enum;
.source "SessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/SessionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CREATED:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum OPENING:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/SessionStatus;
    .locals 3

    const/4 v0, 0x7

    .line 22
    new-array v0, v0, [Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    .line 31
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "OPENING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    .line 37
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "TOKEN_AVAILABLE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    .line 42
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    .line 47
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "CLOSED_WITH_ERROR"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 52
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "INSPECTION_WITH_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 55
    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "CLOSED_WITH_BIND_FAIL"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    .line 22
    invoke-static {}, Lcom/beetalk/sdk/SessionStatus;->$values()[Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->$VALUES:[Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/beetalk/sdk/SessionStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/SessionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/beetalk/sdk/SessionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/SessionStatus;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/SessionStatus;
    .locals 1

    .line 22
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->$VALUES:[Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/SessionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/SessionStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/beetalk/sdk/SessionStatus;->value:I

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
