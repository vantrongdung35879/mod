.class public final enum Lcom/beetalk/sdk/AuthMode;
.super Ljava/lang/Enum;
.source "AuthMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/AuthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/AuthMode;

.field public static final enum LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

.field public static final enum LEGACY_ONLY:Lcom/beetalk/sdk/AuthMode;

.field public static final enum NATIVE_ONLY:Lcom/beetalk/sdk/AuthMode;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/AuthMode;
    .locals 3

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/beetalk/sdk/AuthMode;

    sget-object v1, Lcom/beetalk/sdk/AuthMode;->NATIVE_ONLY:Lcom/beetalk/sdk/AuthMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/AuthMode;->LEGACY_ONLY:Lcom/beetalk/sdk/AuthMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/beetalk/sdk/AuthMode;

    const/4 v1, 0x0

    const-string v2, "native"

    const-string v3, "NATIVE_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthMode;->NATIVE_ONLY:Lcom/beetalk/sdk/AuthMode;

    .line 32
    new-instance v0, Lcom/beetalk/sdk/AuthMode;

    const/4 v1, 0x1

    const-string v2, "legacy_only"

    const-string v3, "LEGACY_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ONLY:Lcom/beetalk/sdk/AuthMode;

    .line 36
    new-instance v0, Lcom/beetalk/sdk/AuthMode;

    const/4 v1, 0x2

    const-string v2, "legacy"

    const-string v3, "LEGACY_ENABLED"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    .line 22
    invoke-static {}, Lcom/beetalk/sdk/AuthMode;->$values()[Lcom/beetalk/sdk/AuthMode;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/AuthMode;->$VALUES:[Lcom/beetalk/sdk/AuthMode;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/beetalk/sdk/AuthMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/AuthMode;
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
    const-class v0, Lcom/beetalk/sdk/AuthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/AuthMode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/AuthMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/beetalk/sdk/AuthMode;->$VALUES:[Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/AuthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/AuthMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/beetalk/sdk/AuthMode;->value:Ljava/lang/String;

    return-object v0
.end method
