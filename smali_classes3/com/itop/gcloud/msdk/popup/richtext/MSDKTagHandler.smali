.class public Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;
.super Ljava/lang/Object;
.source "MSDKTagHandler.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/richtext/WrapperTagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$HttpImageSetterTask;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Strikethrough;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ul;,
        Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ol;
    }
.end annotation


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final defaultBullet:Landroid/text/style/BulletSpan;

.field private static sBackgroundColorPattern:Ljava/util/regex/Pattern; = null

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sForegroundColorPattern:Ljava/util/regex/Pattern; = null

.field private static sTextAlignPattern:Ljava/util/regex/Pattern; = null

.field private static sTextDecorationPattern:Ljava/util/regex/Pattern; = null

.field private static userGivenIndent:I = 0x18


# instance fields
.field private lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Landroid/text/style/BulletSpan;

    sget v1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->userGivenIndent:I

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sColorNameMap:Ljava/util/HashMap;

    const/high16 v1, -0x1000000

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xbbbbbc

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, -0x777778

    .line 535
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, -0x333334

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lightgray"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    .line 537
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "white"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v4, -0x10000

    .line 538
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "red"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, -0xff0100

    .line 539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "green"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, -0xffff01

    .line 540
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "blue"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, -0x100

    .line 541
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "yellow"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, -0xff0001

    .line 542
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cyan"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, -0xff01

    .line 543
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "magenta"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v7, "aqua"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v5, "fuchsia"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v5, "darkgrey"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "grey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "lightgrey"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "lime"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maroon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xffff80

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x7f8000

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x7fff80

    .line 553
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "purple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x3f3f40

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "silver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xff7f80

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "teal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 51
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    return-void
.end method

.method private static appendNewlines(Landroid/text/Editable;I)V
    .locals 4

    .line 187
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 194
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 199
    const-string v0, "\n"

    invoke-interface {p0, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 4

    .line 495
    invoke-static {p1, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 497
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 499
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 501
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_0

    .line 507
    const-string p2, "\n"

    invoke-interface {p1, p2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v1, v1, 0x1

    .line 510
    :cond_0
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v2, p4, p3

    const/16 v3, 0x21

    .line 511
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static endALinkColor(Landroid/text/Editable;)V
    .locals 4

    .line 363
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 366
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 367
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-eq v1, v2, :cond_0

    .line 369
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;->access$400(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-interface {p0, v3, v1, v2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static endBlockElement(Landroid/text/Editable;)V
    .locals 4

    .line 317
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;

    if-eqz v0, :cond_0

    .line 319
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;->access$200(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->appendNewlines(Landroid/text/Editable;I)V

    .line 320
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 323
    :cond_0
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;

    if-eqz v0, :cond_1

    .line 325
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;->access$300(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;)Landroid/text/Layout$Alignment;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static endCssStyle(Landroid/text/Editable;)V
    .locals 5

    .line 404
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Strikethrough;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Strikethrough;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 406
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {p0, v0, v4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 409
    :cond_0
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;

    if-eqz v0, :cond_1

    .line 411
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;->access$600(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {p0, v0, v4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 414
    :cond_1
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    if-eqz v0, :cond_2

    .line 416
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;->access$400(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {p0, v0, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static endFontSize(Landroid/text/Editable;)V
    .locals 4

    .line 343
    const-class v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;

    if-eqz v0, :cond_0

    .line 345
    new-instance v1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;

    iget v2, v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;->size:I

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKFontsizeSpan;-><init>(F)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private endList(Landroid/text/Editable;)V
    .locals 8

    .line 250
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 251
    sget v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->userGivenIndent:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 252
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "ul"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\n"

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 253
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 254
    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 257
    :cond_0
    sget v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->userGivenIndent:I

    .line 258
    sget-object v3, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->defaultBullet:Landroid/text/style/BulletSpan;

    .line 259
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 260
    invoke-virtual {v3, v6}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int/2addr v2, v3

    .line 261
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 264
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    .line 267
    :cond_1
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, v2}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 268
    const-class v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ul;

    new-instance v4, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v7, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    .line 269
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int v0, v0, v7

    invoke-direct {v4, v0}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v5

    aput-object v3, v0, v6

    .line 268
    invoke-direct {p0, p1, v2, v5, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "ol"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 272
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3

    .line 273
    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 277
    :cond_3
    sget v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->userGivenIndent:I

    .line 278
    new-instance v3, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;

    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-direct {v3, v2, v4}, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;-><init>(II)V

    .line 279
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    .line 280
    invoke-virtual {v3, v6}, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int/2addr v2, v3

    .line 281
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 283
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    .line 286
    :cond_4
    new-instance v3, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;

    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-direct {v3, v2, v4}, Lcom/itop/gcloud/msdk/popup/richtext/NumberSpan;-><init>(II)V

    .line 287
    const-class v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ol;

    new-instance v4, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v7, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    .line 288
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int v0, v0, v7

    invoke-direct {v4, v0}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v5

    aput-object v3, v0, v6

    .line 287
    invoke-direct {p0, p1, v2, v5, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static getBackgroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 449
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 450
    const-string v0, "(?:\\s+|\\A)background(?:-color)?\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    .line 453
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static getForegroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 441
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 442
    const-string v0, "(?:\\s+|\\A)color\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    .line 445
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private getHtmlColor(Ljava/lang/String;)I
    .locals 2

    .line 421
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sColorNameMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, -0x1

    .line 426
    :try_start_0
    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 480
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .line 482
    array-length p1, p0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 485
    :cond_0
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static getTextAlignPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 434
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextAlignPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 435
    const-string v0, "(?:\\s+|\\A)text-align\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextAlignPattern:Ljava/util/regex/Pattern;

    .line 437
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextAlignPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static getTextDecorationPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 457
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 458
    const-string v0, "(?:\\s+|\\A)text-decoration\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    .line 461
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static varargs setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5

    .line 465
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 466
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 467
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 469
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    const/16 v4, 0x21

    .line 470
    invoke-interface {p0, v3, v0, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2

    .line 490
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x11

    .line 491
    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private startALinkColor(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 350
    const-string v0, ""

    const-string/jumbo v1, "style"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 352
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 353
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getHtmlColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 356
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    const/high16 v1, -0x1000000

    or-int/2addr p2, v1

    invoke-direct {v0, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;-><init>(I)V

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 1

    if-lez p2, :cond_0

    .line 296
    invoke-static {p0, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->appendNewlines(Landroid/text/Editable;I)V

    .line 297
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;

    invoke-direct {v0, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;-><init>(I)V

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 300
    :cond_0
    const-string p2, ""

    const-string/jumbo v0, "style"

    invoke-interface {p1, p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 302
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getTextAlignPattern()Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 304
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 305
    const-string p2, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 306
    new-instance p1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {p1, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_1
    const-string p2, "center"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 308
    new-instance p1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {p1, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_2
    const-string p2, "end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    new-instance p1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {p1, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startBody(Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 204
    const-string v0, "bgcolor"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string/jumbo v2, "style"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "background"

    invoke-interface {p1, v1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/CommonUtils;->isLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$HttpImageSetterTask;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$HttpImageSetterTask;-><init>(Landroid/widget/TextView;)V

    .line 211
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$HttpImageSetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 215
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 218
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, -0x1

    const/high16 v3, -0x1000000

    if-nez p1, :cond_3

    .line 219
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getHtmlColor(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 223
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    and-int v1, p1, v3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    or-int/2addr p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 226
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 227
    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getHtmlColor(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->textView:Landroid/widget/TextView;

    and-int v1, p1, v3

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    or-int/2addr p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 5

    .line 375
    const-string v0, ""

    const-string/jumbo v1, "style"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 377
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/high16 v2, -0x1000000

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 381
    new-instance v1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;-><init>(I)V

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 385
    :cond_0
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 389
    new-instance v1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;-><init>(I)V

    invoke-static {p1, v1}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 393
    :cond_1
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->getTextDecorationPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 394
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 396
    const-string v0, "line-through"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 397
    new-instance p2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Strikethrough;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Strikethrough;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$1;)V

    invoke-static {p1, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private startFontSize(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 330
    const-string v0, ""

    const-string v1, "size"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 332
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 335
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;

    invoke-direct {v0, p2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$FontSize;-><init>(I)V

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private startList(Landroid/text/Editable;)V
    .locals 3

    .line 235
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 236
    const-string v0, "\n"

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    const-string v1, "ol"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 241
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ol;

    invoke-direct {v0, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ol;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$1;)V

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 242
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_1
    const-string/jumbo v1, "ul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ul;

    invoke-direct {v0, v2}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Ul;-><init>(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$1;)V

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beforeSystemHandleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->endFontSize(Landroid/text/Editable;)V

    :goto_0
    return-void
.end method

.method public behindSystemHandleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 117
    const-string v0, "a"

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startFontSize(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startALinkColor(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->endALinkColor(Landroid/text/Editable;)V

    :goto_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 11

    const/4 v0, 0x4

    .line 56
    const-string v1, "body"

    const/4 v2, 0x3

    const-string v3, "div"

    const-string/jumbo v4, "ul"

    const-string v5, "ol"

    const-string v6, "li"

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 59
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startBody(Lorg/xml/sax/Attributes;)V

    return v10

    .line 62
    :pswitch_1
    invoke-static {p3, p4, v8}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 63
    invoke-direct {p0, p3, p4}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    return v10

    .line 66
    :pswitch_2
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    .line 69
    :pswitch_3
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    .line 73
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->startList(Landroid/text/Editable;)V

    return v10

    .line 78
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :sswitch_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :sswitch_6
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x3

    goto :goto_3

    :sswitch_7
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_8
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    :sswitch_9
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    packed-switch v0, :pswitch_data_1

    :goto_4
    return v9

    :pswitch_5
    return v10

    .line 82
    :pswitch_6
    invoke-static {p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->endCssStyle(Landroid/text/Editable;)V

    .line 83
    invoke-static {p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->endBlockElement(Landroid/text/Editable;)V

    return v10

    .line 86
    :pswitch_7
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return v10

    .line 89
    :pswitch_8
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return v10

    .line 93
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;->endList(Landroid/text/Editable;)V

    return v10

    :sswitch_data_0
    .sparse-switch
        0xd7d -> :sswitch_4
        0xddd -> :sswitch_3
        0xe97 -> :sswitch_2
        0x18491 -> :sswitch_1
        0x2e39a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xd7d -> :sswitch_9
        0xddd -> :sswitch_8
        0xe97 -> :sswitch_7
        0x18491 -> :sswitch_6
        0x2e39a2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
