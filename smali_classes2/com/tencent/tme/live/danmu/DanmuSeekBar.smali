.class public Lcom/tencent/tme/live/danmu/DanmuSeekBar;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/SeekBar;

.field public c:Landroid/widget/TextView;

.field public final d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public e:Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;-><init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar;)V

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/danmu/DanmuSeekBar$b;-><init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar;)V

    iput-object p2, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/danmu/DanmuSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->setPercent(I)V

    return-void
.end method

.method private setPercent(I)V
    .locals 4

    mul-int/lit8 p1, p1, 0x64

    .line 1
    div-int/lit16 p1, p1, 0xff

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_danmu_seekbar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->video_bar_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->b:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->b:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->chat_icon_bulletoption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$dimen;->tme_danmu_size_bar_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;

    invoke-direct {v2, p0, v1}, Lcom/tencent/tme/live/danmu/DanmuSeekBar$a;-><init>(Lcom/tencent/tme/live/danmu/DanmuSeekBar;I)V

    invoke-static {v0, v1, v1, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILcom/tencent/tme/live/l0/a;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->percent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->c:Landroid/widget/TextView;

    const/16 v0, 0xb3

    .line 1
    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->setPercent(I)V

    return-void
.end method

.method public setCallback(Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->e:Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
