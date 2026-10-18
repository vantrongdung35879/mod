.class public final enum Lcom/gme/video/sdk/edit/model/GmeVideoRotation;
.super Ljava/lang/Enum;
.source "GmeVideoRotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/edit/model/GmeVideoRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

.field public static final enum NORMAL:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

.field public static final enum ROTATION_180:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

.field public static final enum ROTATION_270:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

.field public static final enum ROTATION_90:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;


# instance fields
.field private final rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->NORMAL:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    .line 6
    new-instance v1, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    const/16 v3, 0x5a

    const-string v4, "ROTATION_90"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->ROTATION_90:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    .line 7
    new-instance v3, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    const/16 v4, 0xb4

    const-string v6, "ROTATION_180"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->ROTATION_180:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    .line 8
    new-instance v4, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    const/16 v6, 0x10e

    const-string v8, "ROTATION_270"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->ROTATION_270:Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    const/4 v6, 0x4

    .line 3
    new-array v6, v6, [Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->$VALUES:[Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->rotation:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/edit/model/GmeVideoRotation;
    .locals 1

    .line 3
    const-class v0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/edit/model/GmeVideoRotation;
    .locals 1

    .line 3
    sget-object v0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->$VALUES:[Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/edit/model/GmeVideoRotation;

    return-object v0
.end method


# virtual methods
.method public getRotation()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/gme/video/sdk/edit/model/GmeVideoRotation;->rotation:I

    return v0
.end method
