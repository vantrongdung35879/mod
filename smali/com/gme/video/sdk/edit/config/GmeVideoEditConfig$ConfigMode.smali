.class public final enum Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;
.super Ljava/lang/Enum;
.source "GmeVideoEditConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

.field public static final enum Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

.field public static final enum None:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

.field public static final enum Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

.field public static final enum Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

.field public static final enum Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 25
    new-instance v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->None:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    .line 29
    new-instance v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-string v3, "Speed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Speed:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    .line 33
    new-instance v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-string v5, "Repeat"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Repeat:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    .line 37
    new-instance v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-string v7, "Reverse"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Reverse:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    .line 41
    new-instance v7, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const-string v9, "Clip"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->Clip:Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    const/4 v9, 0x5

    .line 21
    new-array v9, v9, [Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->$VALUES:[Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;
    .locals 1

    .line 21
    const-class v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object p0
.end method

.method public static values()[Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;
    .locals 1

    .line 21
    sget-object v0, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->$VALUES:[Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    invoke-virtual {v0}, [Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$ConfigMode;

    return-object v0
.end method
