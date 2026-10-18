.class public final enum Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;",
        "",
        "(Ljava/lang/String;I)V",
        "IS_SUPPORT",
        "GET_SWITCH_STATE",
        "SET_SWITCH_STATE_ON",
        "SET_SWITCH_STATE_OFF",
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
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

.field public static final enum GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

.field public static final enum IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

.field public static final enum SET_SWITCH_STATE_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

.field public static final enum SET_SWITCH_STATE_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;


# direct methods
.method private static final synthetic $values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const-string v1, "IS_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const-string v1, "GET_SWITCH_STATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const-string v1, "SET_SWITCH_STATE_ON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    const-string v1, "SET_SWITCH_STATE_OFF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-static {}, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->$values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->$VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->$VALUES:[Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    return-object v0
.end method
