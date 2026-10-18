.class public final enum Lcom/beetalk/sdk/data/TokenProvider;
.super Ljava/lang/Enum;
.source "TokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/data/TokenProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum APPLE:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GUEST:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum HUAWEI:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum LINE:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum VK:Lcom/beetalk/sdk/data/TokenProvider;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/data/TokenProvider;
    .locals 3

    const/16 v0, 0xd

    .line 22
    new-array v0, v0, [Lcom/beetalk/sdk/data/TokenProvider;

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->HUAWEI:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->APPLE:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GARENA_NATIVE_ANDROID"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    .line 25
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GARENA_WEB_ANDROID"

    const/4 v2, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    .line 27
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GARENA_OTHERS"

    const/4 v2, 0x2

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

    .line 29
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    .line 31
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "HUAWEI"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->HUAWEI:Lcom/beetalk/sdk/data/TokenProvider;

    .line 33
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GUEST"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v5, v4}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    .line 35
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "VK"

    const/16 v5, 0x9

    invoke-direct {v0, v1, v2, v5}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    .line 37
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "LINE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    .line 39
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GOOGLE"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v4, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    .line 41
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "APPLE"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v5, v4}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->APPLE:Lcom/beetalk/sdk/data/TokenProvider;

    .line 43
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "TWITTER"

    const/16 v5, 0xd

    invoke-direct {v0, v1, v2, v5}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    .line 45
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "EMAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    .line 47
    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "PLAY_GAMES"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    .line 22
    invoke-static {}, Lcom/beetalk/sdk/data/TokenProvider;->$values()[Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->$VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/beetalk/sdk/data/TokenProvider;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/data/TokenProvider;
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
    const-class v0, Lcom/beetalk/sdk/data/TokenProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    .line 22
    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->$VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/data/TokenProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/data/TokenProvider;

    return-object v0
.end method
