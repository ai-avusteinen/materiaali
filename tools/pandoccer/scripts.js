(function () {
  const layout = document.querySelector('.layout');
  const handle = document.querySelector('.toc-handle');
  if (!layout || !handle) return;

  let dragging = false;

  handle.addEventListener('mousedown', (e) => {
    dragging = true;
    document.body.style.cursor = 'ew-resize';
    document.body.style.userSelect = 'none';
    e.preventDefault();
  });

  document.addEventListener('mousemove', (e) => {
    if (!dragging) return;
    const layoutRect = layout.getBoundingClientRect();
    const tocWidth = layoutRect.right - e.clientX;
    const percent = Math.max(10, Math.min(80, (tocWidth / layoutRect.width) * 100));
    layout.style.gridTemplateColumns = `minmax(0, 1fr) ${percent}%`;
  });

  document.addEventListener('mouseup', () => {
    if (!dragging) return;
    dragging = false;
    document.body.style.cursor = '';
    document.body.style.userSelect = '';
  });
})();
