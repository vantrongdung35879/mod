.class public final enum Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
.super Ljava/lang/Enum;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGLoginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/GGLoginSession$SessionProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum APPLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum HUAWEI:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;


# instance fields
.field private val:I


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 3

    const/16 v0, 0xb

    .line 1012
    new-array v0, v0, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->HUAWEI:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->APPLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1013
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "GARENA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1015
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1017
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "GUEST"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1019
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "VK"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1021
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "LINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1023
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "GOOGLE"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1025
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "TWITTER"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1027
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v1, 0xd

    const-string v2, "EMAIL"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1029
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "PLAY_GAMES"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1031
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "HUAWEI"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->HUAWEI:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1033
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "APPLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->APPLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    .line 1012
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->$values()[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->$VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

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

    .line 1037
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1038
    iput p3, p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->val:I

    return-void
.end method

.method public static obtainFromPlatformType(I)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 1065
    :pswitch_1
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1063
    :pswitch_2
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1061
    :pswitch_3
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1069
    :pswitch_4
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->APPLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1059
    :pswitch_5
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1067
    :pswitch_6
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->HUAWEI:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1057
    :pswitch_7
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1055
    :pswitch_8
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1053
    :pswitch_9
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1049
    :pswitch_a
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    .line 1051
    :pswitch_b
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1012
    const-class v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    .line 1012
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->$VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1042
    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->val:I

    return v0
.end method
