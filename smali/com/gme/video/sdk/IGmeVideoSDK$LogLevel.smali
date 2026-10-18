.class public final enum Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;
.super Ljava/lang/Enum;
.source "IGmeVideoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/IGmeVideoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

.field public static final enum DEBUG:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

.field public static final enum ERROR:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

.field public static final enum INFO:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

.field public static final enum NONE:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

.field public static final enum VERBOSE:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;


# instance fields
.field level:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->NONE:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    .line 16
    new-instance v1, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->ERROR:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    .line 17
    new-instance v3, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->INFO:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    .line 18
    new-instance v5, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->DEBUG:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    .line 19
    new-instance v7, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const-string v9, "VERBOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->VERBOSE:Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    const/4 v9, 0x5

    .line 13
    new-array v9, v9, [Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;
    .locals 1

    .line 13
    const-class v0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;
    .locals 1

    .line 13
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->level:I

    return v0
.end method
