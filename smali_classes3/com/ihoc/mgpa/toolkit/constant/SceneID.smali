.class public final enum Lcom/ihoc/mgpa/toolkit/constant/SceneID;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/toolkit/constant/SceneID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum DEFAULT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final INT_DEFAULT:I = 0x0

.field public static final INT_LOGIN_LOAD:I = 0x3

.field public static final INT_MAIN_UI:I = 0x4

.field public static final INT_NO_SET:I = -0x1

.field public static final INT_PLAYING:I = 0x7

.field public static final INT_SCENE_LOAD:I = 0x5

.field public static final INT_SCENE_LOAD_WAIT:I = 0x6

.field public static final INT_START:I = 0x1

.field public static final INT_UPDATE:I = 0x2

.field public static final INT_WATCH_MODE:I = 0x8

.field public static final enum LOGIN_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum NO_SET:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum PLAYING:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum SCENE_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum SCENE_LOAD_WAIT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum START:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum UPDATE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

.field public static final enum WATCH_MODE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/toolkit/constant/SceneID;
    .locals 3

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->NO_SET:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->DEFAULT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->START:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->UPDATE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->LOGIN_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->SCENE_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->SCENE_LOAD_WAIT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->PLAYING:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->WATCH_MODE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x0

    const-string v2, "-1"

    const-string v3, "NO_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->NO_SET:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x1

    const-string v2, "0"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->DEFAULT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x2

    const-string v2, "1"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->START:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x3

    const-string v2, "2"

    const-string v3, "UPDATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->UPDATE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x4

    const-string v2, "3"

    const-string v3, "LOGIN_LOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->LOGIN_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x5

    const-string v2, "4"

    const-string v3, "MAIN_UI"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->MAIN_UI:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 7
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x6

    const-string v2, "5"

    const-string v3, "SCENE_LOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->SCENE_LOAD:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 8
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/4 v1, 0x7

    const-string v2, "6"

    const-string v3, "SCENE_LOAD_WAIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->SCENE_LOAD_WAIT:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/16 v1, 0x8

    const-string v2, "7"

    const-string v3, "PLAYING"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->PLAYING:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 10
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    const/16 v1, 0x9

    const-string v2, "8"

    const-string v3, "WATCH_MODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->WATCH_MODE:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->$values()[Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/SceneID;

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

    .line 2
    iput-object p3, p0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/constant/SceneID;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/toolkit/constant/SceneID;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/toolkit/constant/SceneID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    return-object v0
.end method


# virtual methods
.method public getSceneID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->id:Ljava/lang/String;

    return-object v0
.end method
