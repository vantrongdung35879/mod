.class public Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isDebugMode:Z = false

.field public static isSimulator:Z = false

.field private static open_id:Ljava/lang/String; = ""

.field private static sdkTag:Ljava/lang/String; = "normal"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->open_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->sdkTag:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebugMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->isDebugMode:Z

    return v0
.end method

.method public static isSimulator()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->isSimulator:Z

    return v0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->isDebugMode:Z

    return-void
.end method

.method public static setIsSimulator(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->isSimulator:Z

    return-void
.end method

.method public static setOpenId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->open_id:Ljava/lang/String;

    return-void
.end method

.method public static setSdkTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/util/AppDataUtil;->sdkTag:Ljava/lang/String;

    return-void
.end method
