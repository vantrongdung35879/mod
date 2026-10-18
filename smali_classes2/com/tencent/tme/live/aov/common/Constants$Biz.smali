.class public Lcom/tencent/tme/live/aov/common/Constants$Biz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/aov/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Biz"
.end annotation


# static fields
.field public static final CLIENT_TYPE:I

.field public static final GAME_TO_POP:I = 0x2

.field public static final GAME_TO_TV:I = 0x1

.field public static final LIVE_TV:I = 0x1

.field public static final LIVE_VERSION:I = 0x4c4c788

.field public static final PLATID:Ljava/lang/String; = "1"

.field public static final TME_GAMEID:Ljava/lang/String; = "aov"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/tencent/tme/live/framework/common/ConstantsAOV$Biz;->CLIENT_TYPE:I

    sput v0, Lcom/tencent/tme/live/aov/common/Constants$Biz;->CLIENT_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
