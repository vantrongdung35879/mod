.class public final enum Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;",
        "",
        "key",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "ACTION",
        "IS_SUPPORT",
        "GET_SWITCH_STATE",
        "SET_SWITCH_STATE",
        "SWITCH_STATE",
        "SWITCH_ON",
        "SWITCH_OFF",
        "STATE",
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
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum SET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

.field public static final enum SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x0

    const-string v2, "action"

    const-string v3, "ACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x1

    const-string v2, "isSupport"

    const-string v3, "IS_SUPPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x2

    const-string v2, "getSwitchState"

    const-string v3, "GET_SWITCH_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x3

    const-string v2, "setSwitchState"

    const-string v3, "SET_SWITCH_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x4

    const-string/jumbo v2, "switchState"

    const-string v3, "SWITCH_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x5

    const-string/jumbo v2, "true"

    const-string v3, "SWITCH_ON"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 7
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x6

    const-string v2, "false"

    const-string v3, "SWITCH_OFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    .line 8
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    const/4 v1, 0x7

    const-string/jumbo v2, "state"

    const-string v3, "STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-static {}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->$values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->$VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->$VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->key:Ljava/lang/String;

    return-object v0
.end method
