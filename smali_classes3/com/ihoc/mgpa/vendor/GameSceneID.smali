.class public final enum Lcom/ihoc/mgpa/vendor/GameSceneID;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/GameSceneID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum DEFAULT:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum LOGIN_LOAD:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum MAIN_UI:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum NOT_FOUND:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum NO_SET:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum PLAYING:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum SCENE_LOAD:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum SCENE_LOAD_WAIT:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum START:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum UPDATE:Lcom/ihoc/mgpa/vendor/GameSceneID;

.field public static final enum WATCH_MODE:Lcom/ihoc/mgpa/vendor/GameSceneID;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v1, "-2"

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/GameSceneID;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v1, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v2, "-1"

    const-string v4, "NO_SET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/GameSceneID;->NO_SET:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v2, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v4, "0"

    const-string v6, "DEFAULT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ihoc/mgpa/vendor/GameSceneID;->DEFAULT:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v4, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v6, "1"

    const-string v8, "START"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/GameSceneID;->START:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v6, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v8, "2"

    const-string v10, "UPDATE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/GameSceneID;->UPDATE:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v8, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v10, "3"

    const-string v12, "LOGIN_LOAD"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/GameSceneID;->LOGIN_LOAD:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v10, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v12, "4"

    const-string v14, "MAIN_UI"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/ihoc/mgpa/vendor/GameSceneID;->MAIN_UI:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v12, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v14, "5"

    const-string v15, "SCENE_LOAD"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/ihoc/mgpa/vendor/GameSceneID;->SCENE_LOAD:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v14, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v15, "6"

    const-string v13, "SCENE_LOAD_WAIT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/ihoc/mgpa/vendor/GameSceneID;->SCENE_LOAD_WAIT:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v13, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v15, "7"

    const-string v11, "PLAYING"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/ihoc/mgpa/vendor/GameSceneID;->PLAYING:Lcom/ihoc/mgpa/vendor/GameSceneID;

    new-instance v11, Lcom/ihoc/mgpa/vendor/GameSceneID;

    const-string v15, "8"

    const-string v9, "WATCH_MODE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ihoc/mgpa/vendor/GameSceneID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/ihoc/mgpa/vendor/GameSceneID;->WATCH_MODE:Lcom/ihoc/mgpa/vendor/GameSceneID;

    const/16 v9, 0xb

    new-array v9, v9, [Lcom/ihoc/mgpa/vendor/GameSceneID;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    aput-object v11, v9, v7

    sput-object v9, Lcom/ihoc/mgpa/vendor/GameSceneID;->$VALUES:[Lcom/ihoc/mgpa/vendor/GameSceneID;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/vendor/GameSceneID;->id:Ljava/lang/String;

    return-void
.end method

.method public static getSceneById(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/GameSceneID;
    .locals 5

    invoke-static {}, Lcom/ihoc/mgpa/vendor/GameSceneID;->values()[Lcom/ihoc/mgpa/vendor/GameSceneID;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/GameSceneID;->getSceneID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/vendor/GameSceneID;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/GameSceneID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/GameSceneID;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/GameSceneID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/GameSceneID;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/GameSceneID;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/GameSceneID;->$VALUES:[Lcom/ihoc/mgpa/vendor/GameSceneID;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/GameSceneID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/GameSceneID;

    return-object v0
.end method


# virtual methods
.method public getSceneID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/GameSceneID;->id:Ljava/lang/String;

    return-object v0
.end method
