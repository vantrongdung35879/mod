.class public final enum Lcom/tencent/tme/player/TMEPlayerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/player/TMEPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Complete:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Error:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Interrupt:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Playing:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Prepared:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Preparing:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Stopped:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum Unknown:Lcom/tencent/tme/player/TMEPlayerState;

.field public static final enum UserPaused:Lcom/tencent/tme/player/TMEPlayerState;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v1, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v3, "Preparing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v3, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v5, "Prepared"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v5, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v7, "Playing"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v7, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v9, "UserPaused"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v9, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v11, "Interrupt"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/tme/player/TMEPlayerState;->Interrupt:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v11, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v13, "Stopped"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v13, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v15, "Complete"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tencent/tme/player/TMEPlayerState;->Complete:Lcom/tencent/tme/player/TMEPlayerState;

    new-instance v15, Lcom/tencent/tme/player/TMEPlayerState;

    const-string v14, "Error"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/tencent/tme/player/TMEPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/tencent/tme/player/TMEPlayerState;->Error:Lcom/tencent/tme/player/TMEPlayerState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/tencent/tme/player/TMEPlayerState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/tencent/tme/player/TMEPlayerState;->$VALUES:[Lcom/tencent/tme/player/TMEPlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/player/TMEPlayerState;
    .locals 1

    const-class v0, Lcom/tencent/tme/player/TMEPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/player/TMEPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/player/TMEPlayerState;
    .locals 1

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->$VALUES:[Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {v0}, [Lcom/tencent/tme/player/TMEPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/player/TMEPlayerState;

    return-object v0
.end method
