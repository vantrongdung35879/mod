.class public final synthetic Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    check-cast p2, Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;

    invoke-static {p1, p2}, Lcom/gme/video/sdk/edit/encoder/GmeVideoBaseEncoder;->lambda$prepareRepeatGenerateNode$0(Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;Lcom/gme/video/sdk/edit/config/GmeVideoEditConfig$RepeatConfigData;)I

    move-result p1

    return p1
.end method
