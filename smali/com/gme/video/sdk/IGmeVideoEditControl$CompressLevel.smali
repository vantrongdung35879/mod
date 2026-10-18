.class public final enum Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;
.super Ljava/lang/Enum;
.source "IGmeVideoEditControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/IGmeVideoEditControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field public static final enum LEVEL_360P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field public static final enum LEVEL_480P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field public static final enum LEVEL_540P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field public static final enum LEVEL_720P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

.field public static final enum LEVEL_ORIGINAL:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;


# instance fields
.field private final mScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 56
    new-instance v0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/16 v1, 0x168

    const-string v2, "LEVEL_360P"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_360P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    .line 61
    new-instance v1, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/16 v2, 0x1e0

    const-string v4, "LEVEL_480P"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_480P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    .line 66
    new-instance v2, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/16 v4, 0x21c

    const-string v6, "LEVEL_540P"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_540P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    .line 71
    new-instance v4, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/16 v6, 0x2d0

    const-string v8, "LEVEL_720P"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_720P:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    .line 76
    new-instance v6, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/4 v8, -0x1

    const-string v10, "LEVEL_ORIGINAL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->LEVEL_ORIGINAL:Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    const/4 v8, 0x5

    .line 52
    new-array v8, v8, [Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->mScale:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;
    .locals 1

    .line 52
    const-class v0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;
    .locals 1

    .line 52
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->$VALUES:[Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;

    return-object v0
.end method


# virtual methods
.method public getScale()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$CompressLevel;->mScale:I

    return v0
.end method
